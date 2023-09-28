const http = require('http')
const bl = require('bl')
const URL = process.argv[2]


http.get(URL,function(response){

	response.pipe(bl(function(err,data){
		if(err){
			return console.log('error')
		}
		console.log(data.length)
		console.log(data.toString())
	}))

	})