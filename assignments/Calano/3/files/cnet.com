HTTP/1.1 301 Moved Permanently
Server: nginx/1.25.1
Date: Mon, 16 Oct 2023 05:33:01 GMT
Content-Type: text/html
Content-Length: 169
Location: https://www.cnet.com/
Via: 1.1 google

HTTP/2 200 
content-type: text/html; charset=utf-8
last-modified: Mon, 16 Oct 2023 05:28:43 GMT
date: Mon, 16 Oct 2023 05:33:01 GMT
set-cookie: fly_geo={"countryCode": "us"}; max-age=604800; path=/; domain=.cnet.com; Secure;
set-cookie: fly_device=desktop; max-age=604800; path=/; domain=.cnet.com; Secure;
set-cookie: fly_zip=23185; max-age=604800; path=/; domain=.cnet.com; Secure;
set-cookie: country_code=us; max-age=604800; path=/; domain=.cnet.com; Secure; SameSite=Lax;
vary: Accept-Encoding, User-Agent
cache-control: max-age=300, private
strict-transport-security: max-age=63072000; includeSubDomains; preload
accept-ranges: bytes
content-length: 777476

