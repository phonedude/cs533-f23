const express = require('express');
const md5 = require('md5');
const fs = require('fs');
const path = require('path');
const app = express();
const port = 3000;

const recognizedClientsLog = 'recognized_clients.txt';
const allClientsLog = 'all_clients.txt';

const fingerprints = {};

function generateFingerprint(req) {
    const headersToInclude = [
        'User-Agent',
        'Accept-Language',
        'Accept-Encoding',
        'Connection',
        'DNT',
        'Sec-Fetch-Site',
        'Sec-Fetch-Mode',
        'Sec-Fetch-User',
    ];

    const fingerprintAndAdditionalInfo = headersToInclude.reduce((acc, header) => {
        if (header !== 'if-modified-since' && header !== 'if-none-match') {
			const value = req.get(header) || 'Not provided';
			acc.fingerprintData += value;
			acc.additionalInfo[header] = value;
		}
        return acc;
    }, { fingerprintData: '', additionalInfo: {} });
	
    const combinedFingerprint = fingerprintAndAdditionalInfo.fingerprintData + Object.values(fingerprintAndAdditionalInfo.additionalInfo).join('');

    return md5(combinedFingerprint);
}

function logToFile(filename, data) {
    const logEntry = `[${new Date()}] ${JSON.stringify(data, null, 2)}\n`;
    fs.appendFile(filename, logEntry, (err) => {
        if (err) {
            console.error(`Error logging to ${filename}: ${err}`);
        } else {
            console.log(`Logged to ${filename}: ${JSON.stringify(data)}`);
        }
    });
}

app.use((req, res, next) => {
    const serverIP = req.connection.localAddress;
    console.log(`Server IP Address: ${serverIP}`);
	console.log(`[${new Date()}] ${req.method} ${req.url} from ${req.ip}`);
	next();
});

function chooseHTMLFile(fingerprint) {
	let htmlFilePath;
	if (fingerprint === 'fingerprint1') {
		htmlFilePath = 'public/html/fingerprint1/index.html';
	} else if (fingerprint === 'fingerprint2') {
		htmlFilePath = 'public/html/fingerprint2/index.html';
	} else {
		htmlFilePath = 'public/html/default/index.html';
	}
	
	return path.resolve(__dirname, htmlFilePath);
}

const recognizedClients = {};

app.get('/', (req, res) => {
    console.log('Request Headers:', req.headers);
	
    const fingerprint = generateFingerprint(req);

    const deviceType = req.get('Device-Type');
    const browserUsed = req.get('User-Agent');

    const clientData = {
        date: new Date(),
        fingerprint,
        ip: req.ip,
        // headers: extractRelevantHeaders(req.headers),
		headers: req.headers,
        deviceType,
        browserUsed
    };

    if (recognizedClients[fingerprint]) {
		console.log(`Repeat Customer - Fingerprint: ${fingerprint}`);
        logToFile(recognizedClientsLog, clientData);
    } else {
		// console.log(`New Customer - Fingerprint: ${fingerprint}`);
        recognizedClients[fingerprint] = true;
    }

    logToFile(allClientsLog, clientData);

    const htmlFile = chooseHTMLFile(fingerprint);
    res.sendFile(htmlFile);
});

function extractRelevantHeaders(headers) {
    const relevantHeaders = ['User-Agent', 'Accept-Language', 'Accept-Encoding', 'Connection', 'DNT', 'Sec-Fetch-Site', 'Sec-Fetch-Mode', 'Sec-Fetch-User'];
    return relevantHeaders.reduce((acc, header) => {
        acc[header] = headers[header] || 'Not provided';
        return acc;
    }, {});
}

const os = require('os');

function getLocalIpAddress() {
    const networkInterfaces = os.networkInterfaces();
    let localIpAddress;

    Object.keys(networkInterfaces).forEach((interfaceName) => {
        const interfaces = networkInterfaces[interfaceName];

        interfaces.forEach((interfaceInfo) => {
            if (interfaceInfo.family === 'IPv4' && !interfaceInfo.internal) {
                localIpAddress = interfaceInfo.address;
            }
        });
    });

    return localIpAddress;
}

const localIpAddress = getLocalIpAddress();

app.listen(port, localIpAddress, () => {
	console.log(`Server running at http://${localIpAddress}:${port}`);
});
/*
app.listen(port, () => {
	console.log(`Server running at http://localhost:${port}`);
});
*/