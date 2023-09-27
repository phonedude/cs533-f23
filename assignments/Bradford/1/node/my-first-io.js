const fs = require('fs')

path_to_file = process.argv[2]
let buf = fs.readFileSync(path_to_file)
const str = buf.toString()
console.log(str.split('\n').length-1)