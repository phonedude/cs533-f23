const fs = require('fs')
fs.readFile(process.argv[2], function (err, data){
	const str1 = data.toString();
	const str2 = str1.split('\n');
	console.log(str2.length - 1);
})
// const str2 = str1.toString()


//  var n = str2.split('\n')

//  console.log(n.length - 1)

// fs.readFile(process.argv[2], function (err, contents) {
// var lines = contents.toString().split('\n').length - 1;
// console.log(lines);
// })