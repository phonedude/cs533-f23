const express = require("express");
const app = express();
const path = require("path");
const publicPath = path.join(__dirname);
const port = 4005; 
var cors = require('cors')

app.use(cors())


app.get("/", function (req, res) {
	res.set('Access-Control-Expose-Headers', '*')
    res.set('X-CS533f23-movie', 'john Wick')
	res.set('X-CS533f23-tvshow', 'Suits')
	res.set('X-CS533f23-musician', 'Taylor Swift') 
	res.send("<html><head><title>Kumushini's Page</title></head><body><h1>Welcome to my page! - Reading HTTP response headers</h1></body></html>")
});



app.listen(port, (error) =>{
    if (error) {
        console.log('Something went wrong', error)
    }
    else{
     console.log(`Server is running on localhost ${port}`);
    }
});
