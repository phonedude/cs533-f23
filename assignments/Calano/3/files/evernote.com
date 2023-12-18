HTTP/1.1 301 Moved Permanently
Cache-Control: private
Location: https://evernote.com:443/
Content-Length: 0
Date: Mon, 16 Oct 2023 05:33:12 GMT
Content-Type: text/html; charset=UTF-8

HTTP/2 200 
x-nextjs-cache: HIT
x-powered-by: Next.js
etag: "d64utaw4bf2aqj"
content-type: text/html; charset=utf-8
content-length: 107270
cache-control: s-maxage=31536000, stale-while-revalidate
vary: Accept-Encoding
date: Mon, 16 Oct 2023 05:33:12 GMT
via: 1.1 google
referrer-policy: strict-origin-when-cross-origin
content-security-policy: connect-src 'self' https://stage.evernote.com
x-content-type-options: nosniff
x-permitted-cross-domain-policies: none
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000

