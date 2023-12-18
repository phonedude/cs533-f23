const net = require('net');
const strftime = require('strftime');
const strf = require('strftime')

let portNumber = process.argv[2]
const server = net.createServer(function (socket) {
    // logic
    let date = strftime('%F %k:%M') + '\n';
    socket.write(date);
    socket.closed();
});

server.listen(portNumber);