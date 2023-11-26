## Assignment 6 - Kumushini(01251889)

## Fingerprinting different clients

### List of files in 6

* [kumu_1.html](kumu_1.html) - html file served to different clients.
* [server.js](server.js) - server used to host kumu_1.html and create fingerprints.
* [visitors_log.json](visitors_log.json) - json file used to log visitor details.

### Youtube video is available at: 

### Summary

 1. Creating fingerprints.

Following code collects three different HTTP request headers using [re.get](https://expressjs.com/en/api.html#req.get) and concatenate them into a single string and save as a hash function using [md5](https://www.npmjs.com/package/md5).

```
//collect request headers
	header1 = req.get('User-Agent');
	header2 = req.get('Accept');
	header3 = req.get('Accept-Language');
	header4 = req.get('Accept-Encoding');
	
//Concat features to creat a string
	var fingerprint = header1.concat(header2, header3, header4);
		
//fingerprint into hash value
	var fingerprint_id = md5(fingerprint);

```

 2. Log visitor details to visitor_log.json.

The server follows the following steps when logging Visitor details:\

1. Access the log file and checks whether the fingerprint exists.\
2. If fingerprint is found update the visit count and last visit date and update log file with new data.\
3. If the fingerprint is new, add new data to the file.\

```
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

```

3. Screenshots of demonstrations with five different browsers.

* Google Chrome (device - Laptop)

 <kbd><img src="screenshots/google_chrome.png" width="700" ></kbd>


* Brave (device - Laptop)

 <kbd><img src="screenshots/edge.png" width="700" ></kbd>


* Microsoft Edge (device - Laptop)

 <kbd><img src="screenshots/brave.png" width="700" ></kbd>


* Firefox (device - Laptop)

 <kbd><img src="screenshots/firefox.png" width="700" ></kbd>


* curl (device - Laptop)

 <kbd><img src="screenshots/curl.png" width="700" ></kbd>


4. Screenshot of demonstration with five mobile phone.

 <kbd><img src="screenshots/mobile.png" width="700" ></kbd>






