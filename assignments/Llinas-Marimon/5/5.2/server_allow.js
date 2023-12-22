const express = require("express");
const app = express();
const path = require("path");
const publicPath = path.join(__dirname);
const port = 3005; 
var cors = require('cors')

app.use(cors())

app.get("/", function (req, res) {
	res.set('Access-Control-Expose-Headers', '*')
    res.set('artist', 'Ariana Grande')
	res.set('tvshow', 'Suits')
	res.set('band', 'Coldplay') 
	res.send("<html><head><title>Brian's website</title></head><body><h1>Welcome to my page about A5: File 5.2!</h1><h2>CORS: Blocking and reading HTTP response headers from another origin</h2></body></html>")
});

app.listen(port, (error) =>{
    if (error) {
        console.log('Error', error)
    }
    else{
        console.log(`Assignment 5: File 5.2 server listening at http://localhost:${port}`)
    }
});