const http = require('http')
const URL = process.argv[2]


http.get(URL,function(response){
	response.setEncoding('utf8')
	response.on('data', console.log)
	response.on('error', console.error)
	})
	
