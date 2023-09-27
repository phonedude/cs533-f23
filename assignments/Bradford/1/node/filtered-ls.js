const fs = require('fs')
const path = require('path')

filePath = process.argv[2]
extFilter = "." + process.argv[3]

fs.readdir(filePath, (err, files) => {
    if (err) {
        console.log(err)
    }
    else {
        files.forEach(file => {
            if(path.extname(file) === extFilter) {
                console.log(file)
            }
        })
    }
})