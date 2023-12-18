
var Fingerprint = require('express-fingerprint')

var http = require('http')

var fs = require('fs');

const express = require("express");

const path = require('path');

const app = express();

app.listen(1234, () => {
  console.log("Server is listening on port: 1234");
});



const useragent = require('express-useragent');


app.use(useragent.express());

app.use(function(req, res, next) {
    
global.navigator = {
  userAgent: 'node',
}

if (!req.session.useragent) {
        let userAgentIs = (useragent) => {
            let r = [];
            for (let i in useragent) 
                if (useragent[i] === true)
                    r.push(i);
            return r;
        }
        req.session.useragent = {
            browser: req.useragent.browser,
            version: req.useragent.version,
            os: req.useragent.os,
            platform: req.useragent.platform,
            geoIp: req.useragent.geoIp, // needs support from nginx proxy
            source: req.useragent.source,
            is: userAgentIs(req.useragent),
        };
    }
    return next();
});

app.use(Fingerprint({
    parameters:[
        // Defaults
        Fingerprint.useragent,
        Fingerprint.acceptHeaders,
        Fingerprint.geoip,

        // Additional parameters
        function(next) {
            // ...do something...
            next(null,{
            'param1':"value1"
            })
        },
        function(next) {
            // ...do something...
            next(null,{
            'param2':'value2'
            })
        },
    ]
}))


app.get('*',function(req,res){
    
    if (req.fingerprint.hash == "6e2cdc743fc68174c75f413f997eead4"){
                res.sendFile(path.join(__dirname,'thewire.html'));
    }
    else if (req.fingerprint.hash == "283ef91858fd31db0e5b0abe358ffcba"){
                res.sendFile(path.join(__dirname,'peachpit.html'));
    }
    else if (req.fingerprint.hash == "eb55080868716dc2682c14385c3f615a"){
                res.sendFile(path.join(__dirname,'parasite.html'));
    }

/*if (req.fingerprint.hash == '283ef91858fd31db0e5b0abe358ffcba'){
	console.log("Correct!")}*/
console.log(req.fingerprint.hash)
console.log(req.fingerprint)
});




