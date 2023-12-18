http = require('http');
//process.argv[2]
http.get(process.argv[2], (response) => {
  let data = '';
  response.setEncoding('utf8');

  response.on('data', (chunk) => {
    data += (chunk + '\n');
  });

  response.on('end', () => {
    //outputWithNewline = data + '\n'; 
    const output = data.slice(0, -1) // The response data with last newline removed
    console.log(output)
  });
}).on('error', (error) => {
  console.error(error);
});
