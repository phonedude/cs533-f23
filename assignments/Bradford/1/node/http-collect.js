const http = require('http')

let url = process.argv[2]

let allData = ""

http.get(url, function callback(response) {
    response.setEncoding('utf-8')
    
    response.on('data', function (data) {
        allData += data
    })
    response.on('end', function() {
        console.log(allData.length)
        console.log(allData)
    })
})