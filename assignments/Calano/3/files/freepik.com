HTTP/1.1 301 Moved Permanently
Cache-Control: private
Location: https://freepik.com:443/
Content-Length: 0
Date: Mon, 16 Oct 2023 05:33:14 GMT
Content-Type: text/html; charset=UTF-8

HTTP/2 301 
server: istio-envoy
date: Mon, 16 Oct 2023 05:33:14 GMT
content-type: text/html
content-length: 162
location: https://www.freepik.com/
x-envoy-upstream-service-time: 1
via: 1.1 google
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000

HTTP/2 200 
server: istio-envoy
date: Mon, 16 Oct 2023 05:33:14 GMT
content-type: text/html; charset=UTF-8
set-cookie: csrf_freepik=7551912504da9f540db939390ce017fd; expires=Mon, 16 Oct 2023 07:33:14 GMT; Max-Age=7200; path=/; secure; SameSite=Strict
set-cookie: _fc=FC.0ce7dd84-6a9b-83c2-39c9-6b4214a4607e; Max-Age=Session;
set-cookie: _fcid=FC.0ce7dd84-6a9b-83c2-39c9-6b4214a4607e; Max-Age=31536000;
x-date: Mon, 16 Oct 2023 07:33:14 GMT
cache-control: nocache
x-accel-expires-debug: 7200
referrer-policy: no-referrer-when-downgrade
permissions-policy: accelerometer=(), autoplay=(), camera=(), encrypted-media=(), fullscreen=(), geolocation=(), gyroscope=(), magnetometer=(), microphone=(), midi=(), payment=(self "https://pay.google.com"), picture-in-picture=(), sync-xhr=(self), usb=()
x-xss-protection: 1; mode=block
x-content-type-options: nosniff
x-permitted-cross-domain-policies: master-only
strict-transport-security: max-age=31536000; includeSubDomains
content-security-policy: frame-ancestors *.photopea.com;
x-frame-options: Deny
x-envoy-upstream-service-time: 19
via: 1.1 google
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000

