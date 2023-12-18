const express = require("express");
const {createReadStream} = require('fs');
const bodyParser = require('body-parser');

const app = express();
app.use(bodyParser.urlencoded({extended: false}))

app.get('/html/:route', (req, res) => {
    createReadStream('html/' + req.params["route"]).pipe(res)
});

app.listen(4000);
console.log("Listening on port 4000");