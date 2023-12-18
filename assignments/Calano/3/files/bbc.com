HTTP/1.1 301 Moved Permanently
Connection: close
Content-Length: 0
Server: Varnish
Retry-After: 0
Accept-Ranges: bytes
Date: Mon, 16 Oct 2023 05:32:59 GMT
Via: 1.1 varnish
X-Served-By: cache-iad-kiad7000028-IAD
X-Cache: HIT
X-Cache-Hits: 0
X-Timer: S1697434379.022329,VS0,VE0
Location: https://bbc.com/
nel: {'report_to':'default','max_age': 2592000,'include_subdomains':true,'failure_fraction':0.05}
report-to: {'group':'default','max_age':2592000,'endpoints':[ {'url':'https://default.bbc-reporting-api.app/report-endpoint','priority':1} ],'include_subdomains':true}
req-svc-chain: FASTLY
Cache-Control: public,max-age=604800,stale-while-revalidate=3600,stale-if-error=3600
alt-svc: h3=":443";ma=86400,h3-29=":443";ma=86400,h3-27=":443";ma=86400

HTTP/2 301 
server: Varnish
retry-after: 0
accept-ranges: bytes
date: Mon, 16 Oct 2023 05:32:59 GMT
via: 1.1 varnish
x-served-by: cache-iad-kiad7000037-IAD
x-cache: HIT
x-cache-hits: 0
x-timer: S1697434379.159400,VS0,VE0
location: https://www.bbc.com/
nel: {'report_to':'default','max_age': 2592000,'include_subdomains':true,'failure_fraction':0.05}
report-to: {'group':'default','max_age':2592000,'endpoints':[ {'url':'https://default.bbc-reporting-api.app/report-endpoint','priority':1} ],'include_subdomains':true}
req-svc-chain: FASTLY
strict-transport-security: max-age=31536000; preload
cache-control: public,max-age=604800,stale-while-revalidate=3600,stale-if-error=3600
alt-svc: h3=":443";ma=86400,h3-29=":443";ma=86400,h3-27=":443";ma=86400
content-length: 0

HTTP/2 200 
content-type: text/html; charset=UTF-8
belfrage-cache-status: HIT
bid: sally
brequestid: b3b15c8ce0d244a0b6516851c9bdc128
bsig: dd6c607f7f127572020f1095728d0b29
etag: W/"caa3e88bf46aafe718f4d3ed74d392a4"
req-svc-chain: FASTLY,GTM,BELFRAGE
via: 1.1 BBC-GTM, 1.1 fd0747792998e84c93905ff27ba05f7c.cloudfront.net (CloudFront), 1.1 Belfrage, 1.1 varnish
x-amz-cf-id: EKi7Le5-TyFI4FKOKlknOXlfnT775OWnGDPhcr5WYENRyHEpLpF6zg==
x-amz-cf-pop: DUB56-P1
origin-agent-cluster: ?0
nel: {"report_to":"default","max_age":2592000,"include_subdomains":true,"failure_fraction":0.25}
x-bbc-edge-cache-status: HIT
report-to: {"group":"default","max_age":2592000,"endpoints":[{"url":"https://default.bbc-reporting-api.app/report-endpoint","priority":1}],"include_subdomains":true}
server: BBC-GTM
strict-transport-security: max-age=31536000; preload
fastly-restarts: 1
accept-ranges: bytes
date: Mon, 16 Oct 2023 05:32:59 GMT
x-fastly-cache-status: HIT-CLUSTER
x-served-by: cache-iad-kjyo7100155-IAD
x-cache: Hit from cloudfront, HIT
x-cache-hits: 1
x-timer: S1697434379.317750,VS0,VE3
x-fastly-pre-flight-cache: MISS, HIT
x-fastly-pre-flight-cache-status: HIT-CLUSTER
x-cache-age: 24
x-lb-nocache: true
cache-control: private, stale-if-error=90, stale-while-revalidate=30, max-age=0, must-revalidate
vary: X-BBC-Edge-Scheme,cookie-ckns_bbccom_beta,Accept-Encoding
alt-svc: h3=":443";ma=86400,h3-29=":443";ma=86400,h3-27=":443";ma=86400
content-length: 241719

