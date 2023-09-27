const fs = require('fs')
const filePath = require('path')

const folder = process.argv[2]
const fileType = '.' + process.argv[3]

fs.readdir(folder, function (err, files) {
  files.forEach(function (file) {
    if (filePath.extname(file) === fileType) {
      console.log(file)
    }
  })
})

