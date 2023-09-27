const fs = require('fs')
const path = require('path');

const directoryPath = process.argv[2];
const desiredExtension = process.argv[3];

function filterFilesByExtension(directoryPath, desiredExtension, callback) {
    fs.readdir(directoryPath, (err, files) => {
      if (err) {
        callback(err, null);
        return;
      }
      const requestedExtension = '.' + desiredExtension;
      const filteredFiles = files.filter((file) =>
      path.extname(file) === requestedExtension
      );
  
      const filteredFilesWithNewlines = filteredFiles.map((file) => file + '\n');
      const output = filteredFilesWithNewlines.join('').slice(0, -1);
  
      callback(null, filteredFiles);
    });
}
  
module.exports = filterFilesByExtension;
