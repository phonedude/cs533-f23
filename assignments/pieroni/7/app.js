const express = require('express');
const fs = require('fs');
const path = require('path');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

app.use(bodyParser.urlencoded({ extended: true }));

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'));
});

app.post('/save', (req, res) => {
    const content = req.body.content;

    // Append the content to a text file
    fs.appendFile('output.txt', `${content}\n`, (err) => {
        if (err) throw err;
        console.log('Content saved to file!');
    });

    res.redirect('/');
});

app.listen(port, () => {
    console.log(`Server is running at http://localhost:${port}`);
});

function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
