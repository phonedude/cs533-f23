const express = require("express");
const app = express();
const path = require("path");
const publicPath = path.join(__dirname,'html_files');
const port = 4000; 


// app.get("/", function (req, res) {
//     res.sendFile(__dirname + "/.html");
// });

app.use("/", express.static(__dirname + "/html_files"));

// app.get("/suits", function (req, res) {
//     res.sendFile(`${publicPath}/suits.html`);
// });



app.listen(port, (error) =>{
    if (error) {
        console.log('Something went wrong', error)
    }
    else{
    console.log("Server is running on localhost4000");
    }
});

