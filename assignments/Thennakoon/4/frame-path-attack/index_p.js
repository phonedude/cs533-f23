const express = require("express");
const app = express();
const path = require("path");
const { createReadStream } = require('fs')
// const publicPath = path.join(__dirname,'html_files');
const publicPath = path.join(__dirname);
const port = 8000; 

// app.get('/', (req, res) => {
//     createReadStream('files/html/stolencookie.html').pipe(res)
//   })

app.get("/", function (req, res) {
    res.sendFile(`${publicPath}/parent.html`);
});


// app.use("/", express.static(__dirname + "/html_files"));




app.listen(port, (error) =>{
    if (error) {
        console.log('Something went wrong', error)
    }
    else{
    console.log("Server is running on localhost:8000");
    }
});

