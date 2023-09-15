const mymodule = require('./mymodule')

const directoryPath = process.argv[2];
const desiredExtension = process.argv[3];

mymodule.filterFilesByExtension(directoryPath, desiredExtension, (err, filteredFiles) => {
  if (err) {
    console.error('Error:', err);
    return;
  }

  output.forEach((file) => {
    console.log(file);
  });
});
