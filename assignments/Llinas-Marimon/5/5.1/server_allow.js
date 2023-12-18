const express = require("express");
const app = express();
const path = require("path");
const publicPath = path.join(__dirname);
const port = 3001; 
var cors = require('cors')

app.use(cors())

app.get("/favorites_a2", function (req, res) {
	res.sendFile(path.join(publicPath, "favorites_a2.json"));
});

app.listen(port, (error) =>{
    if (error) {
        console.log('Error', error)
    }
    else{
        console.log(`Assignment 5: File 5.1 server listening at http://localhost:${port}`)
    }
});