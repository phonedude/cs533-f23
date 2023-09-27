const fs = require('fs');

fileData = fs.readFileSync(process.argv[2], { encoding: 'utf8' });
var lineCount = fileData.split("\n").length;

console.log(lineCount -1);
