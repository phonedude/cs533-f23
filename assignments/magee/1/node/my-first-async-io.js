const fs = require('fs')

const contents = fs.readFile(process.argv[2], 'utf8', (err, contents) => {
    if (err) {
      throw err
    }
    const lines = contents.split('\n').length - 1;
    console.log(lines);
})
