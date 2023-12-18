HTTP/1.1 301 Moved Permanently
Server: awselb/2.0
Date: Mon, 16 Oct 2023 05:32:59 GMT
Content-Type: text/html
Content-Length: 134
Connection: keep-alive
Location: https://www.britannica.com:443/

HTTP/2 200 
date: Mon, 16 Oct 2023 05:32:59 GMT
content-type: text/html;charset=UTF-8
vary: Accept-Encoding,User-Agent
x-tserver: ip-10-145-21-116/127.0.1.1
set-cookie: bcomID=-5117722460783061898; Max-Age=315360000; Expires=Thu, 13 Oct 2033 05:32:59 GMT; Domain=britannica.com; Path=/
set-cookie: SessionAuth=5CeprjEcUxi+3G0Dr/X2vOqcEd4FQCf9hrW0H9rcLMRHIao030WuoQ8xmW+BQ2EZ; Domain=britannica.com; Path=/
set-cookie: subreturn=https%3A%2F%2Fwww.britannica.com%2F; Domain=britannica.com; Path=/
set-cookie: webstats=referer_page=https%3A%2F%2Fwww.britannica.com%2F; Domain=britannica.com; Path=/
set-cookie: __mendel=%7B%27pagesViewed%27%3A1%2C%27surveyShown%27%3Afalse%2C%27topicInitialSequence%27%3A0%7D; Domain=britannica.com; Path=/
content-language: en-US
x-wserver: 127.0.0.1
x-iset: green
x-xss-protection: 1; mode=block
x-permitted-cross-domain-policies: master-only
expect-ct: max-age=604800
cf-cache-status: DYNAMIC
report-to: {"endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report\/v3?s=%2F9S6E9vUooGzr8LBDizBZWx6OIrFIRLVsaxIBWVPgT5VO%2BbEpeJjsb9beQG%2FV52NXmSzvP7SwaB7RJ2uzo9NAPzpXTxR5kWsW3n1yo9zyk%2FIjVrCx%2FkVHqLV%2FHTP0QhJAn6VWg%3D%3D"}],"group":"cf-nel","max_age":604800}
nel: {"success_fraction":0.01,"report_to":"cf-nel","max_age":604800}
server: cloudflare
cf-ray: 816deca86abf505b-ORF
alt-svc: h3=":443"; ma=86400

