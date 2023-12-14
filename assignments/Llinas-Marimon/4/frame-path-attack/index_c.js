const express = require('express');
const app = express();
const path = require('path');
const publicPath = path.join(__dirname);
const port = 4000;

app.get('/', function(req, res) {
    res.sendFile(path.join(publicPath, 'child.html'));
});

app.listen(port, (error) =>{
    if (error) {
        console.log('Error', error)
    }
    else{
        console.log(`Assignment 4: Child server listening at http://localhost:${port}`)
    }
});