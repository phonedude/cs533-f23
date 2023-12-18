HTTP/1.1 301 Moved Permanently
Cache-Control: private
Location: https://myspace.com:443/
Content-Length: 0
Date: Mon, 16 Oct 2023 05:33:39 GMT
Content-Type: text/html; charset=UTF-8

HTTP/2 200 
vary: Accept-Encoding
set-cookie: persistent_id=pid%3Dae6ddbeb-8a52-4aea-8c40-00d136048bbe%26llid%3D%26lprid%3D%26lltime%3D; domain=.myspace.com; path=/; expires=Sun, 11 Oct 2043 05:44:34 GMT; httpOnly
set-cookie: visit_id=03bad5fd-fdd5-4e19-80e6-f948f5514fec; domain=.myspace.com; path=/; expires=Mon, 16 Oct 2023 06:14:34 GMT; httpOnly
set-cookie: beacons_enabled=true; domain=.myspace.com; path=/; expires=Mon, 16 Oct 2023 06:14:34 GMT
set-cookie: player=sequenceId%3D-1%26paused%3Dtrue%26currentTime%3D0%26volume%3D0.5%26mute%3Dfalse%26shuffled%3Dfalse%26repeat%3Doff%26mode%3Dqueue%26pinned%3Dfalse%26streamStartDateTime%3D%26at%3D360%26incognito%3Dfalse%26allowSkips%3Dtrue%26ccOn%3Dfalse; domain=.myspace.com; path=/; expires=Wed, 15 Nov 2023 05:44:34 GMT
x-handling-host: ash2-app201
x-trackingid: 8144668b-6b60-40f2-83fe-e35e65dea9ff
cache-control: no-cache
strict-transport-security: max-age=31536000
x-frame-options: SAMEORIGIN
content-security-policy: frame-ancestors 'self'
content-type: text/html; charset=utf-8
content-length: 241249
x-response-time: 72ms
date: Mon, 16 Oct 2023 05:44:34 GMT
via: 1.1 google, 1.1 google
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000

