const express = require('express')
const {createReadStream} = require('fs')
const path = require('path')
const fs = require('fs')
const md5 = require('md5');

const app = express()

const fingerPrintLog = require('./fingerprintlog.json');

app.get('/', (req, res) => {
    const userAgent = req.headers['user-agent'];
    const acceptHeader = req.headers['accept'];
    const acceptLanguage = req.headers['accept-language'];
    const userHash = md5(userAgent + acceptHeader + acceptLanguage);
    // Fingerprint exists; user has visited before
    if (fingerPrintLog[userHash]) {
        console.log('This user has visited before!');
        fingerPrintLog[userHash]['Times Visited']++;
        res.write("<h1>Oh, I've seen you " + fingerPrintLog[userHash]['Times Visited'] + " times now</h1>")
    }
    // Fingerprint doesn't exist; user has not visited before
    else {
        fingerPrintLog[userHash] = {}
        fingerPrintLog[userHash]['User Agent'] = userAgent;
        fingerPrintLog[userHash]['Accept'] = acceptHeader;
        fingerPrintLog[userHash]['Accept Language'] = acceptLanguage;
        fingerPrintLog[userHash]['Times Visited'] = 1;
        console.log('This person has not visited before!')
        res.write("<h1>Huh, I've never seen you before. But I have now....</h1>")
    }
    fs.writeFile('fingerprintlog.json', JSON.stringify(fingerPrintLog), (error) => {
        if(error) {
            console.log(error)
        }
    })
    createReadStream('index.html').pipe(res);
});

app.listen(8080);
console.log("I'm listening");