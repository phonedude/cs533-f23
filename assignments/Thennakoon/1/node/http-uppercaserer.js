var http = require('http')
// const fs = require('fs')
const map = require('through2-map')



const server = http.createServer(function(inStream, outStream){
	if(inStream.method == 'POST'){
		inStream.pipe(map(function (chunk) {
       	return chunk.toString().toUpperCase()
    })).pipe(outStream)
	}
})

server.listen(process.argv[2])