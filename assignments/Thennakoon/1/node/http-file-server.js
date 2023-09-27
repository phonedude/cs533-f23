var http = require('http')
const fs = require('fs')


const server = http.createServer(function(req,res){
	var src = fs.createReadStream(process.argv[3])
	src.pipe(res)
	//req logic
})

server.listen(process.argv[2])