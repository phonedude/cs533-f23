const express = require("express");
const app = express();
const path = require("path");
const publicPath = path.join(__dirname);
const port = 3005; 

app.use(function(req, res, next) {
  res.setHeader(
    "Content-Security-Policy",
    "default-src 'self' https://www.20minutos.es/; script-src 'self' 'unsafe-inline'"
  );
  next();
});

app.get("/", function (req, res) {
	res.sendFile(__dirname + "/website_3.html");
});

app.listen(port, (error) =>{
    if (error) {
        console.log('Error', error)
    }
    else{
        console.log(`Assignment 5: File 5.3 server listening at http://localhost:${port}`)
    }
});