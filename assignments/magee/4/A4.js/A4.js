const express = require('express');

const app = express();
const port = 4000;

const fs = require('fs');

const filename = '/Users/player1/Desktop/cs533-f23/assignments/magee/4/domain_list.txt';

fs.readFile(filename, 'utf8', (err, data) => {
  if (err) {
    console.error(err);
    return;
  }

  const domains = data.split('\n');
  console.log(domains.map(domain => `'${domain}'`));
});

app.get('/', (req, res) => {
    // Create an HTML string that contains iframes for each site
    const iframes = sites.map(siteUrl => `<iframe src="${siteUrl}"></iframe>`).join('');

    // Send the HTML with iframes as the response
    res.send('
    
        <!DOCTYPE html>
        <html>
        <head>
            <title>Display Sites in Iframes</title>
        </head>
        <body>
            ${iframes}
        </body>
        </html>
    ');
});

// Start server
app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~

