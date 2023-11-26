const express = require("express");
const app = express();
const path = require("path");
const publicPath = path.join(__dirname,'html');


app.use(express.static(path.resolve('./public')));

app.get("/", function (req, res) {
    // res.sendFile(__dirname+'/home.html');
    res.sendFile(path.join(__dirname,'home.html'));
});

app.get("/suits", function (req, res) {
    res.sendFile(`${publicPath}/suits.html`);
});

app.get("/taylor", function (req, res) {
    res.sendFile(`${publicPath}/taylor.html`);
});

app.get("/johnwick", function (req, res) {
    res.sendFile(`${publicPath}/johnwick.html`);
});


app.listen(3000, function () {
    console.log("Server is running on localhost4000");
});