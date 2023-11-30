const express = require('express');
const path = require('path');  
const fs = require('fs');
const md5 = require('md5');
const app = express();

var clientIds = [];

app.get('/', (req, res) => {
  var fingerprint = [];

  fingerprint.push(req.headers['x-forwarded-for'] || req.connection.remoteAddress);
  fingerprint.push(req.get('Accept'));
  fingerprint.push(req.get('Accept-Language'));
  fingerprint.push(req.get('Accept-Encoding'));
  fingerprint.push(req.get('User-Agent'));

  var fingerprintString = fingerprint.toString();
  var client_id = md5(fingerprintString);

  if (clientIds.includes(client_id)) {
   
    res.sendFile(path.join(__dirname, 'horizon.html')); 
    console.log(`${client_id} has visited this webpage before.`);
  } else {
   
    console.log(`${client_id} is a new visitor!`);
    res.sendFile(path.join(__dirname, 'horizon.html'));
    clientIds.push(client_id);
  }

  fs.writeFile('clientIds.json', JSON.stringify(clientIds), (err) => {
    if (err) {
      console.log(err);
    }
  });
});

const port = 8000;
const inet = '127.0.0.1';

app.listen(port, inet, () => {
  console.log(`Server is listening at http://${inet}:${port}`);
});
