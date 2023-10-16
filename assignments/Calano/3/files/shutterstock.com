HTTP/1.1 301 Moved Permanently
Server: awselb/2.0
Date: Mon, 16 Oct 2023 05:51:45 GMT
Content-Type: text/html
Content-Length: 134
Connection: keep-alive
Location: https://shutterstock.com:443/

HTTP/2 301 
server: awselb/2.0
date: Mon, 16 Oct 2023 05:51:46 GMT
content-type: text/html
content-length: 134
location: https://www.shutterstock.com:443/

HTTP/2 406 
content-type: text/html
content-length: 0
server: CloudFront
date: Mon, 16 Oct 2023 05:51:51 GMT
etag: "651408ad-0"
x-cache: Error from cloudfront
via: 1.1 2b0c54ffe9876882253b010d44184bdc.cloudfront.net (CloudFront)
x-amz-cf-pop: IAD89-P2
alt-svc: h3=":443"; ma=86400
x-amz-cf-id: Thbh0-AmqsoK3d6etCBHyGEtOl-xyEQPQvpPo1db62Q8SxAd1d9BvQ==

