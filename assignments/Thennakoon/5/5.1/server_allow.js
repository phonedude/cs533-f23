const express = require("express");
const app = express();
const path = require("path");
const publicPath = path.join(__dirname);
const port = 4001; 
var cors = require('cors')

app.use(cors())


app.get("/favs", function (req, res) {
	
    res.sendFile(__dirname + "/favs.json");
});



app.listen(port, (error) =>{
    if (error) {
        console.log('Something went wrong', error)
    }
    else{
     console.log(`Server is running on localhost ${port}`);
    }
});
