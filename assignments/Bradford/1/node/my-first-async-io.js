const fs = require('fs')

path_to_file = process.argv[2]
let num_lines = undefined

function countNewLines(callback) {
    fs.readFile(path_to_file, function doneReading(err, fileContents) {
        let str = fileContents.toString()
        num_lines = str.split('\n').length-1
        callback()
    })
}

function logCount() {
    console.log(num_lines)
}

countNewLines(logCount)