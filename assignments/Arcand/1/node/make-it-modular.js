const mymodule = require('./mymodule');

const directory = process.argv[2];
const extension = process.argv[3];

if (!directory || !extension) {
  console.error('Usage: node make-it-modular.js <directory> <extension>');
  process.exit(1);
}

mymodule(directory, extension, (err, data) => {
  if (err) {
    console.error('An error occurred:', err);
  } else {
    data.forEach((file) => {
      console.log(file);
    });
  }
});
