var net = require('net');
// var date = newDate()

function zeroFill(i) {
  return (i < 10 ? '0' : '') + i;
}

function getDate(){
	var date = new Date()
	return date.getFullYear() + '-' 
		+zeroFill(date.getMonth()  + 1) + '-'
		+zeroFill(date.getDate())  + ' ' 
		+zeroFill(date.getHours()) + ':' 
		+zeroFill(date.getMinutes());
}

const server = net.createServer(function (socket) {
      socket.end(getDate() + '\n')
})

// const server = net.createServer(function(socket){
// 	socket.end(getDate() + '\n');
// 	//socket handling
// });


server.listen(Number(process.argv[2]));

