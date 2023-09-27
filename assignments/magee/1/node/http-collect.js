http = require('http');
  //exampleURL = 'http://example.com/api/data'
  //process.argv[2]
  http.get(process.argv[2] , (response) => {
    let data = '';
    response.setEncoding('utf8');
  
    response.on('data', (chunk) => {
      data += chunk;
    });
  
    response.on('end', () => {
      let charCount = data.length
      console.log(charCount)
      console.log(data)
    });
  }).on('error', (error) => {
    console.error(error);
  });
