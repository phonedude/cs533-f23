const http = require('http');

// Check if a URL is provided as a command-line argument
if (process.argv.length !== 3) {
  console.error('Usage: node http-client.js <URL>');
  process.exit(1);
}

const url = process.argv[2];

// Perform an HTTP GET request
http.get(url, (response) => {
  // Set the encoding to 'utf8' to receive data as strings
  response.setEncoding('utf8');

  // Listen for the 'data' event
  response.on('data', (data) => {
    // Write each chunk of data to the console (stdout) on a new line
    console.log(data);
  });

  // Listen for the 'error' event in case of any errors
  response.on('error', (error) => {
    console.error(`Error: ${error.message}`);
  });

  // Listen for the 'end' event when the response is complete
  response.on('end', () => {
    // Do nothing here to remove the "Response complete." message
  });
}).on('error', (error) => {
  console.error(`Error: ${error.message}`);
});
