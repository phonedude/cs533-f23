function requestData() {
    fetch('http://localhost:8081/data.json', {
        method: 'GET',
        mode: 'cors',
    })
    .then(response => {
			console.log('X-Headers-Blocked:', response.headers.get('X-Headers-Blocked'));
			if (response.headers.get('X-Headers-Blocked') === 'false') {
				const tvSeriesHeader = response.headers.get('X-CS533f23-TVSeries');
				const musicianHeader = response.headers.get('X-CS533f23-Musician');
				const bookSeriesHeader = response.headers.get('X-CS533f23-BookSeries');
				if (tvSeriesHeader && musicianHeader && bookSeriesHeader) {
					document.getElementById('response').innerText =
						`TV Series: ${tvSeriesHeader}\nMusician: ${musicianHeader}\nBook Series: ${bookSeriesHeader}`;
				} else {
					document.getElementById('response').innerText =
						'Custom headers are blocked.';
				}
				return response.json();
			} else {
                document.getElementById('response').innerText =
                    'Custom headers are blocked.';
                throw new Error('Custom headers are blocked.');
            }
		})
		.then(data => {
		})
		.catch(error => {
			console.error('Error:', error);
			document.getElementById('response').innerText = 'Error fetching data';
		});
}