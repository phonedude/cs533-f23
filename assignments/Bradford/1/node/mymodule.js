const fs = require('fs')
const path = require('path')

module.exports = function filterLs(dirName, fileExt, callback) {
    function filterArray(dir) {
        return path.extname(dir) === '.' + fileExt
    }
    fs.readdir(dirName, function doneReading(err, files) {
        if (err) {
            return callback(err)
        }
        else {
            files = files.filter(filterArray)
            return callback(null, files)
        }
    })
}