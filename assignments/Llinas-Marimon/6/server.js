const expresss = require('express');
const fs = require('fs');
const app = expresss();
const http = require('http');
const md5 = require('md5');
const path = require('path');
const publicPath = path.join(__dirname);
const port = 3000;

app.get('/', function (req, res) {
    // collect reuqest headers
    header1 = req.get('User-Agent');
	header2 = req.get('Accept');
	header3 = req.get('Accept-Language');
	header4 = req.get('Accept-Encoding');

    // concat features to create a string
    var fingerprint = header1.concat(header2, header3, header4);
    // fingerprint into hash value
    var fingerprint_id = md5(fingerprint);

    // serve file
    if (header1.includes('curl')) {
        res.sendFile(__dirname + "/website_1.html");
    } else if (header1.includes('Safari') && !header1.includes('Chrome')) {
        res.sendFile(__dirname + "/ariana-grande.html");
    } else if (header1.includes('Firefox')) {
        res.sendFile(__dirname + "/suits.html");
    } else if (header1.includes('OPR')) {
        res.sendFile(__dirname + "/coldplay.html");
    } else if (header1.includes('Chrome')) {
        res.sendFile(__dirname + "/favs.html");
    } else {
        res.send('Unsupported browser');
    }

	const data = fs.readFileSync('visitors_log.json');
	const jsonData = JSON.parse(data);
	
	if(JSON.stringify(jsonData.visitors) != '[]'){
		
		var flag = 0;
		for(let i = 0; i < jsonData.visitors.length; i++) {
			
			if(fingerprint_id == jsonData.visitors[i]["id"] ){
				flag = 1;
				console.log('inside if');
				jsonData.visitors[i]["visit_count"] = jsonData.visitors[i]["visit_count"] +1;
				jsonData.visitors[i]["last_visit_date"].push(new Date());
				log_line = (JSON.stringify(jsonData)).concat('\n')
				console.log(log_line)
				fs.writeFileSync('visitors_log.json', log_line, err => {
					if (err) {
						console.error(err)
						return
					}
				}); 
			}
		}
		if (flag == 0){
			jsonData.visitors.push({
			id: fingerprint_id,
			User_Agent: header1,
			Accept: header2,
			Accept_Language: header3,
			Accept_Encoding: header4,
			last_visit_date: [new Date()],
			visit_count:1			
			});
			
			fs.writeFileSync('visitors_log.json', JSON.stringify(jsonData) + "\n", 'utf-8', (err) => {
			if (err) throw err;
			});	
		}
	}else {
			jsonData.visitors.push({
			id: fingerprint_id,
			User_Agent: header1,
			Accept: header2,
			Accept_Language: header3,
			Accept_Encoding: header4,
			last_visit_date: [new Date()],
			visit_count:1			
			});
			
			fs.writeFileSync('visitors_log.json', JSON.stringify(jsonData) + "\n", 'utf-8', (err) => {
			if (err) throw err;
			console.log('Data added to file');
			});
		}	
	console.log('new visits:\n');
	console.log(jsonData.visitors);
});

app.listen(port, (error) =>{
    if (error) {
        console.log('Error', error)
    }
    else{
        console.log(`Assignment 6 server listening at http://localhost:${port}`)
    }
});
