const net = require('net')  
var strftime = require('strftime')

const portNumber = process.argv[2]
const server = net.createServer(function (socket) {  
    socket.end(strftime('%F %H:%M') + '\n')  //YYYY-MM-DD hh:mm
})  
server.listen(portNumber)
