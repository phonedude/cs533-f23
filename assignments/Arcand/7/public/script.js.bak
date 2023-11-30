function submitForm() {
	
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;
	
    const data = {
        username: username,
        password: password
    };
	
    fetch('/login', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        return response.text();
    })
    .then(responseText => {
        console.log(responseText);
    })
    .catch(error => {
        console.error('There was a problem with the fetch operation:', error);
    });
}
