const fs = require('fs');
const { JSDOM } = require('jsdom');
const axios = require('axios');

async function checkFramability(htmlFilePath, resultsFile) {
    try {
        const fileContents = fs.readFileSync(htmlFilePath, 'utf8');
        const dom = new JSDOM(fileContents);
        const iframes = Array.from(dom.window.document.getElementsByTagName('iframe'));

        for (let i = 0; i < iframes.length; i++) {
            const iframeSrc = iframes[i].getAttribute('src');

            if (iframeSrc && iframeSrc.trim() !== '') {
                try {
                    const response = await axios.head(iframeSrc);

                    if (response.status === 200) {
                        const result = `${iframeSrc},framable`; // CSV format
                        // Append the result to the file immediately
                        fs.appendFileSync(resultsFile, result + '\n');
                        console.log(result);
                    }
                } catch (error) {
                    const result = `${iframeSrc},not framable`; // CSV format
                    // Append the result to the file immediately
                    fs.appendFileSync(resultsFile, result + '\n');
                    console.log(result);
                }
            }
        }
    } catch (error) {
        console.log('Error processing file:', error);
    }
}

const framableDirectory = 'C:/Users/17572/cs533-f23/assignments/Arcand/4/framable/';
const files = fs.readdirSync(framableDirectory);

const resultsFile = 'C:/Users/17572/cs533-f23/assignments/Arcand/4/framable_results.csv';

// Create the CSV file with headers
fs.writeFileSync(resultsFile, 'Website,IsFramable\n');

async function processFiles() {
    for (const file of files) {
        if (file.endsWith('.html')) {
            await checkFramability(framableDirectory + file, resultsFile); // Use 'await' here to ensure all URLs are checked
        }
    }

    console.log(`All results have been written to ${resultsFile}`);
}

processFiles();
