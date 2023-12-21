const express = require("express");
const app = express();
const path = require("path");
const publicPath = path.join(__dirname,'html_files');
const port = 4000; 

app.use("/", express.static(__dirname + "/html_files"));

// create list of 100 websites from code/html_files
const fs = require('fs');

// pass directoryPath and callback function
const files = fs.readdirSync(publicPath);

// display all filenames
app.get('/', (req, res) => {
    const files = fs.readdirSync(publicPath);
    let html = files.map(file => `<a href="/${file}">${file}</a><br>`).join('');
    res.send(html);
});

app.listen(port, (error) =>{
    if (error) {
        console.log('Error', error)
    }
    else{
        console.log(`Assignment 4 server listening at http://localhost:${port}`)
    }
});