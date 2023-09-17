const net = require('net')  
var strftime = require('strftime')

const portNumber = process.argv[2]
const server = net.createServer(function (socket) {  
    socket.write(strftime('%F %H:%M'))  //YYYY-MM-DD hh:mm
})  
server.listen(portNumber)
