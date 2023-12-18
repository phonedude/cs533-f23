const http = require('http')

let url1 = process.argv[2]
let url2 = process.argv[3]
let url3 = process.argv[4]

let allData = ""

http.get(url1, function callback(response) {
    response.on('data', function (data) {
        allData += data.toString();
    })
    response.on('end', function () {
        console.log(allData)
        allData = "";
        http.get(url2, function callback(response) {
            response.on('data', function(data) {
                allData += data.toString()
            })
            response.on('end', function () {
                console.log(allData);
                allData = "";
                http.get(url3, function callback(response) {
                    response.on('data', function (data) {
                        allData += data.toString();
                    });
                    response.on('end', function() {
                        console.log(allData)
                    })
                });
            });
        });
    });
});