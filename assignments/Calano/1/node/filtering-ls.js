const fs = require('fs')


const filteredFiles = fs.readdir(process.argv[2], (err, files) => {
  if (!err) {
    const filteredFiles = files.filter(file => file.endsWith(`.${process.argv[3]}`))
    filteredFiles.forEach(f => console.log(f))
  }
})
