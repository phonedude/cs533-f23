HTTP/1.1 301 Moved Permanently
Server: Tengine
Date: Mon, 16 Oct 2023 05:32:52 GMT
Content-Type: text/html
Content-Length: 239
Connection: keep-alive
Location: https://alibaba.com/
Timing-Allow-Origin: *
EagleId: 210325ca16974343720552672e707c
server-timing: rt;dur=0.000,eagleid;desc=210325ca16974343720552672e707c

HTTP/2 301 
date: Mon, 16 Oct 2023 05:32:52 GMT
content-type: text/html
content-length: 278
location: https://www.alibaba.com/
server: Tengine
set-cookie: ali_apache_id=33.1.193.207.1697434372204.277841.9; path=/; domain=.alibaba.com; expires=Wed, 30-Nov-2084 01:01:01 GMT
strict-transport-security: max-age=31536000
timing-allow-origin: *
eagleid: 2101c1cf16974343722034917ef943
server-timing: rt;dur=0.002,eagleid;desc=2101c1cf16974343722034917ef943

HTTP/2 200 
content-type: text/html;charset=UTF-8
render-policy: human-normal
x-content-type-options: nosniff
x-xss-protection: 1; mode=block
cache-control: no-cache, no-store, max-age=0, must-revalidate
pragma: no-cache
expires: 0
x-frame-options: DENY
content-language: zh-CN
strict-transport-security: max-age=31536000
strict-transport-security: max-age=31536000
timing-allow-origin: *
eagleid: 2103284c16974343723472908ef61e
server-timing: rt;dur=0.124,eagleid;desc=2103284c16974343723472908ef61e
date: Mon, 16 Oct 2023 05:32:52 GMT
set-cookie: ali_apache_id=33.3.40.76.1697434372351.287035.5; path=/; domain=.alibaba.com; expires=Wed, 30-Nov-2084 01:01:01 GMT
set-cookie: cna=BLmzHZ71YgQCAS/2gNkCTvMv; Domain=.alibaba.com; Path=/; Expires=Sat, 03-Nov-2091 08:46:59 GMT; Secure; SameSite=None
set-cookie: ug_se_c=organic_1697434372353; Domain=.alibaba.com; Expires=Thu, 24-Jun-2055 07:19:31 GMT; Path=/; Secure; HttpOnly
object-status: ttl=-1,age=0
edge-type: akamai

