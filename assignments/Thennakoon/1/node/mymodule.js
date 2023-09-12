const fs = require('fs')
const path = require('path')
	

module.exports = function (directory, file_extn, callback) {

  fs.readdir(directory, function (err, list) {
    if (err)
      return callback(err)

    list = list.filter(function (file) {
      return path.extname(file) === '.' + file_extn
    })

    callback(null, list)
  })
}