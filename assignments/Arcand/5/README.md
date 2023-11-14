Assignment 5 for CS 433/533 Web Security, Fall 2023, is focused on the practical application of web security concepts in which I set up two servers on different ports in order to explore and demonstrate issues related to Same-origin policy, Cross-Origin Resource Sharing (CORS), and Content Security Policy (CSP).

The files are saved in the Arcand\5 folder.

CORS: Blocking and reading responses from another origin (5 points)
node.js, HTML, and json files in the directory 5.1 that demonstrate Javascript running in one HTML file requesting a .json response from another origin:

Images:
<img src="images/1.png" width="700">

Viewing the files:

<img src="images/2.png" width="700">

<img src="images/3.png" width="700">

<img src="images/4.png" width="700">

<img src="images/5.png" width="700">

<img src="images/6.png" width="700">

Showing the behavior of the project:

<img src="images/7.png" width="700">

<img src="images/8.png" width="700">

Showing what is necessary to allow the response:

<img src="images/9.png" width="700">

"CORS: Blocking and reading responses from another origin" Youtube video:
https://youtu.be/UjRl3JdYpwk?si=OWQkkLybzeA8Z6hJ

Images:
<img src="images/10.png" width="700">

Viewing the files:

<img src="images/11.png" width="700">

<img src="images/12.png" width="700">

<img src="images/13.png" width="700">

<img src="images/14.png" width="700">

<img src="images/15.png" width="700">

Showing the behavior of the project (Demonstrating how three custom HTTP response headers (X-CS533f23-*, where * corresponds to my three favorite things from assignment 2) are both blocked and then allowed by one server.):

<img src="images/16.png" width="700">

<img src="images/17.png" width="700">

"CORS: Blocking and reading HTTP response headers from another origin" Youtube video:
https://www.youtube.com/watch?v=fKMtY65hncM

Content-Security-Policy: embedding from another site

Images:

<img src="images/18.png" width="700">

Viewing the files:
<img src="images/19.png" width="700">
<img src="images/20.png" width="700">
<img src="images/21.png" width="700">

Showing the behavior of the project:
Enabled:
<img src="images/23.png" width="700">
Disabled:
<img src="images/22.png" width="700">

"Content-Security-Policy: embedding from another site" Youtube video:
https://www.youtube.com/watch?v=QrwXkZQua2g

links to the pages:
Please note any files containing web content, is considered a "page."

https://github.com/phonedude/cs533-f23/blob/main/assignments/Arcand/5/5.1/index.html
https://github.com/phonedude/cs533-f23/blob/main/assignments/Arcand/5/5.2/index.html
https://github.com/phonedude/cs533-f23/blob/main/assignments/Arcand/5/5.3/embed.html

Short descriptions of what each file does:

| Directory | File                           | a short description of what the file does                                                                                                                                                                                               |
| --------- | ------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 5/images  | All files in the images folder | Provide documentation for the README.md                                                                                                                                                                                                 |
| 5/5.1     | data.json                      | json file in the directory 5.1 that helps demonstrate Javascript running in one HTML file requesting a .json response from another origin.                                                                                              |
| 5/5.1     | index.html                     | html file in the directory 5.1 that helps demonstrate Javascript running in one HTML file requesting a .json response from another origin.                                                                                              |
| 5/5.1     | script.js                      | javascript file in the directory 5.1 that helps demonstrate Javascript running in one HTML file requesting a .json response from another origin.                                                                                        |
| 5/5.1     | server1.js                     | javascript file in the directory 5.1 that helps demonstrate Javascript running in one HTML file requesting a .json response from another origin.                                                                                        |
| 5/5.1     | server2.js                     | javascript file in the directory 5.1 that helps demonstrate Javascript running in one HTML file requesting a .json response from another origin.                                                                                        |
| 5/5.2     | data.json                      | json file in the directory 5.2 that helps demonstrate how three custom HTTP response headers (X-CS533f23-\*, where \* corresponds to my three favorite things from assignment 2) are both blocked and then allowed by one server.       |
| 5/5.2     | index.html                     | html file in the directory 5.2 that helps demonstrate how three custom HTTP response headers (X-CS533f23-\*, where \* corresponds to my three favorite things from assignment 2) are both blocked and then allowed by one server.       |
| 5/5.2     | script.js                      | javascript file in the directory 5.2 that helps demonstrate how three custom HTTP response headers (X-CS533f23-\*, where \* corresponds to my three favorite things from assignment 2) are both blocked and then allowed by one server. |
| 5/5.3     | embed.html                     | html file in the directory 5.3 that helps demonstrate the Content-Security-Policy. |
| 5     | server.js                     | javascript file in the directory 5 that helps demonstrate the Content-Security-Policy. |

Screenshots of requests being blocked and allowed can be seen above.
Links to Youtube videos (one video for each of 5.1, 5.2, 5.3, and optionally 5.4) demonstrating the reading and blocking can be seen above.