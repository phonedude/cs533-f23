HTTP/1.1 301 Moved Permanently
Date: Mon, 16 Oct 2023 05:33:41 GMT
Content-Type: text/html
Content-Length: 162
Connection: keep-alive
Location: https://netvibes.com/
X-slb: slb3

HTTP/2 301 
date: Mon, 16 Oct 2023 05:33:41 GMT
content-type: text/html
content-length: 162
location: https://www.netvibes.com/
x-slb: slb5

HTTP/2 301 
date: Mon, 16 Oct 2023 05:33:42 GMT
content-type: text/html; charset=UTF-8
set-cookie: lang=en_US; expires=Tue, 31-Oct-2023 05:33:42 GMT; Max-Age=1296000; path=/; secure; SameSite=None
location: /en
strict-transport-security: max-age=31536000; includeSubDomains
x-frame-options: deny
x-content-type-options: nosniff
x-slb: slb2

HTTP/2 200 
date: Mon, 16 Oct 2023 05:33:42 GMT
content-type: text/html; charset=UTF-8
vary: Accept-Encoding
set-cookie: lang=en_US; expires=Tue, 31-Oct-2023 05:33:42 GMT; Max-Age=1296000; path=/; secure; SameSite=None
strict-transport-security: max-age=31536000; includeSubDomains
x-frame-options: deny
x-content-type-options: nosniff
x-slb: slb2

