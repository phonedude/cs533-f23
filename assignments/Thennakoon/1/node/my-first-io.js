const fs = require('fs')
var buf = fs.readFileSync(process.argv[2])
const str = buf.toString()


 var n = str.split('\n')

 console.log(n.length - 1)