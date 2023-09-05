const fs = require('fs')

const filterFiles = (path, ext, callback) => {
  return fs.readdir(path, (err, files) => {
    return err ?
      callback(err)
      :
      callback(null, files.filter(file => file.endsWith(`.${ext}`)))
  })
}

module.exports = filterFiles