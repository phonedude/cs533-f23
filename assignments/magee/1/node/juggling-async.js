const http = require('http');
const bl = require('bl');
const async = require("async");

const urls = [process.argv[2], process.argv[3], process.argv[4]];

function fetchUrl(url, callback) {
  http.get(url, function (response) {
    response.pipe(bl(function (err, data) {
      if (err) {
        return callback(err);
      }
      const content = data.toString();
      callback(null, content);
    }));
  });
}

async.map(urls, fetchUrl, function (err, results) {
  if (err) {
    console.error(err);
    return;
  }

 results.forEach((data, index) => {
    console.log(data);
  });
});

