function requestData() {
	console.log('Requesting data...');
    fetch('http://localhost:8081/data.json')
        .then(response => response.json())
        .then(data => {
            document.getElementById('response').innerText = JSON.stringify(data, null, 2);
        })
        .catch(error => {
            console.error('Error:', error);
            document.getElementById('response').innerText = 'Error fetching data';
        });
}