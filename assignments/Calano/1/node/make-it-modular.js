const filterFiles = require('./mymodule.js')

filterFiles(process.argv[2], process.argv[3], (err, filteredFiles) => {
  if (err)
    console.log('Unable to find files.')
  else
    filteredFiles.forEach(f => console.log(f))
})