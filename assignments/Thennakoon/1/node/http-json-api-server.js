var url = require('url')
var http = require('http')
// const URL = process.argv[2]

const server = http.createServer(function(request,response){
	if(request.method == 'GET'){
		response.writeHead(200, {'Content-Type': 'application/json'})
        var parsedReq = url.parse(request.url, true)
        var date = new Date(parsedReq.query['iso'])
        if(parsedReq.pathname == "/api/parsetime"){
        	date = '{"hour":'+ date.getHours() +',"minute":'+ date.getMinutes() +',"second":'+ date.getSeconds() +'}'
        } else if(parsedReq.pathname == "/api/unixtime"){
        	date = '{"unixtime":'+ Date.parse(date.toISOString()) +'}'
        }
        response.end(date)
	}
	
})

server.listen(process.argv[2])

