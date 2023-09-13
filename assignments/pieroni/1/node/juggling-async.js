const http = require('http')
const bl = require('bl')

let stop = 0
const dataString = []

function printData (){
   for (let i = 0; i < 3; i++){
        console.log(dataString[i])
   }
}


function grabData (webNum) {
 http.get(process.argv[2 + webNum], function (response){
  response.pipe(bl(function (err, data) {
    
    dataString[webNum] = data.toString()
    stop++

    if(stop === 3){
	printData()
	}
  }))
})
}



for (let i = 0; i < 3; i++){
     grabData(i)
}

