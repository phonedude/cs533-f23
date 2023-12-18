const express = require("express");
const app = express();
const path = require("path");
const publicPath = path.join(__dirname);
const port = 4005; 

app.use(function (req, res, next) {
  res.setHeader(
    'Content-Security-Policy',
    "default-src 'self' https://www.adobe.com/; script-src 'self' 'unsafe-inline'"
  );
  next();
});



app.get("/", function (req, res) {
	res.sendFile(__dirname + "/kumu_3.html");
});



app.listen(port, (error) =>{
    if (error) {
        console.log('Something went wrong', error)
    }
    else{
     console.log(`Server is running on localhost ${port}`);
    }
});
