var express = require('express');
var app = express();
var useragent = require('express-useragent');

app.use(useragent.express());
app.get('/', function(req, res){

    var browser = req.useragent.browser;
    console.log('Browser:', browser);

    if (browser === 'Chrome') {
        res.sendFile('thewire.html', { root: __dirname });
    } else if (browser === 'Firefox') {
        res.sendFile('parasite.html', { root: __dirname });
    } else {
        // Default page for other browsers
        res.sendFile('peachpit.html', { root: __dirname });
    }


    
});
app.listen(3000);
