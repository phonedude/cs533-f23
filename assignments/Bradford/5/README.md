# CS 533 Assignment 5  
For this assignment, I was given three different tasks related to the Same-Origin policy, Cross-Origin Resource Sharing (CORS) and the Content Security Policy (CSP). All reports for these parts are compiled here. The necessary files are organized in directories 5.1, 5.2, and 5.3.  

## Task 5.1: Blocking and reading responses from another origin  
In this task, I created two simple node servers meant to run on separate ports simultaneously. One to serve a JSON response, and another meant to serve an HTML with Javascript that makes an HTTP request to the first server.  
### Server setup  
I setup one server ([serve_json_blocked.js](5.1/serve_json_blocked.js)) with just one route to serve a JSON file ([favoritethings.json](5.1/favoritethings.json)). I set it up to run on port 8080. I then setup another server ([client.js](5.1/client.js)) to serve an HTML ([client.html](5.1/client.html)) containing Javascript that sends a request to port 8080. This server runs on port 8000. The Javascript to make the request is shown below.  
```
    const http = new XMLHttpRequest();
    const url = "http://localhost:8080";
    http.open("GET", url);
    http.send()
    setTimeout( () => {
        const p = document.createElement('p')
        if (http.responseText != "") {
            p.innerHTML = "I got it! Here's the response: " + http.responseText;
        }
        else {
            p.innerHTML = "I couldn't get it.....";
        }
        document.body.appendChild(p)
    }, 3000)
}
```  
This works to send a request, and appends the response body to the DOM if it isn't empty.  
### The request getting blocked  
When accessing the server on port 8000, I got an empty response from the other server. The page, and the console log is shown below.  

<img src="img/CORSBlockedRequest.png" width=700>  

The console shows that the request did not succeed due to the request being a Cross-Origin request, violating the Same-Origin policy. Basically, since the request is coming from a different source than the origin, the request gets rejected.  

### Setting up the JSON server to allow the request  
To get around the Same-Origin policy, all I needed to do was add an Access-Control-Allow-Origin header with the url of the client to the server's response. I did this with a line of Javascript in the client's route, shown below.  
```
res.setHeader('Access-Control-Allow-Origin', 'http://localhost:8000')
```
The corrected JSON server code can be found in [serve_json_allow.json](5.1/serve_json_allow.js). With this response header, the browser can successfully make the request, and append it to the DOM, shown below.  

<img src="img/CORSAllowedRequest.png" width=700>  

### Youtube demonstration  
[Youtube link for 5.1 demonstration](https://youtu.be/HLRiCvhPSlQ)