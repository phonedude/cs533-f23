const axios = require('axios');
const fs = require('fs');

const urls = fs.readFileSync('domain_list.txt', 'utf-8').split('\n');

for (const url of urls) {
    axios.head(url)
        .then(response => {
            const xFrameOptions = response.headers['x-frame-options'];
            const contentSecurityPolicy = response.headers['content-security-policy'];

            console.log(`URL: ${url}`);
            console.log(`X-Frame-Options: ${xFrameOptions || 'Not set'}`);
            console.log(`Content-Security-Policy: ${contentSecurityPolicy || 'Not set'}`);
            console.log('-----------------------');
        })
        .catch(error => {
            console.error(`Error checking ${url}: ${error.message}`);
        });
}