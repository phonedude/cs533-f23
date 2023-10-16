HTTP/1.1 301 Moved Permanently
Connection: close
Content-Length: 0
Server: Varnish
Retry-After: 0
Location: https://target.com/
Accept-Ranges: bytes
Date: Mon, 16 Oct 2023 05:34:04 GMT
Via: 1.1 varnish
X-Served-By: cache-iad-kjyo7100027-IAD
X-Cache: HIT
X-Cache-Hits: 0
X-Timer: S1697434445.578063,VS0,VE0

HTTP/2 301 
server: Varnish
retry-after: 0
location: https://www.target.com/
accept-ranges: bytes
date: Mon, 16 Oct 2023 05:34:04 GMT
via: 1.1 varnish
x-served-by: cache-iad-kiad7000139-IAD
x-cache: HIT
x-cache-hits: 0
x-timer: S1697434445.697796,VS0,VE0
strict-transport-security: max-age=31536000; includeSubDomains; preload
content-length: 0

HTTP/2 200 
content-type: text/html; charset=utf-8
cache-control: private, no-cache
etag: "4b45a27yd38hwt"
accept-ranges: bytes
clientgeo: US
clientip: 24.253.146.112
set-cookie: TealeafAkaSid=X8XMsZJGfqCtd4-MHlH169-rggP3Dviy; Expires=Wed, 15 Nov 2023 05:34:05 GMT; Path=/; Domain=target.com;
set-cookie: visitorId=018B36FA24590201899085DE0610F941; Max-Age=63072000; Expires=Wed, 15 Oct 2025 05:34:04 GMT; Path=/; Domain=.target.com; Secure
set-cookie: sapphire=1; Max-Age=2629746; Expires=Wed, 15 Nov 2023 16:03:10 GMT; Path=/; Domain=.target.com; Secure
set-cookie: TealeafAkaSid=X8XMsZJGfqCtd4-MHlH169-rggP3Dviy; Expires=Wed, 15 Nov 2023 05:34:04 GMT; Path=/; Domain=target.com;
x-frame-options: SAMEORIGIN
referrer-policy: no-referrer-when-downgrade
x-content-type-options: nosniff
x-xss-protection: 1; mode=block
date: Mon, 16 Oct 2023 05:34:05 GMT
vary: Accept-Encoding
content-security-policy: frame-ancestors 'self' https://*.target.com;
set-cookie: GuestLocation=23185|37.260|-76.720|VA|US;Path=/; Secure; Max-Age=86400
strict-transport-security: max-age=31536000; includeSubDomains
content-length: 396569

