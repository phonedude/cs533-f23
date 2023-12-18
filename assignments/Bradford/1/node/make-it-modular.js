const myModule = require('./mymodule.js')

const filePath = process.argv[2]
const extFilter = process.argv[3]



function logLs(err, names) {
    names.forEach(function (name) {
        console.log(name)
    })
}

myModule(filePath, extFilter, logLs)