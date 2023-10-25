HTTP/1.1 301 Moved Permanently
content-length: 0
location: https://ovh.com/
date: Mon, 16 Oct 2023 05:33:44 GMT
x-cdn-pop: bhs
x-cdn-pop-ip: 137.74.122.0/26
x-request-id: 84872224
x-cacheable: Cacheable
x-iplb-request-id: 18FD9270:D972_C61B5C01:0050_652CCB38_AAAD0:2A46F
x-iplb-instance: 42353

HTTP/2 301 
date: Mon, 16 Oct 2023 05:33:44 GMT
content-length: 0
location: https://www.ovh.com/
x-iplb-request-id: 90D9023C:8260_C063418B:01BB_652CCB38_0246:296B8
x-iplb-instance: 49213
x-cdn-pop: bhs
x-cdn-pop-ip: 137.74.122.0/26
x-request-id: 445415983
x-cacheable: Cacheable

HTTP/2 301 
date: Mon, 16 Oct 2023 05:33:45 GMT
x-cacheable: Not cacheable: not http 200
x-cdn-pop: bhs
x-cdn-pop-ip: 137.74.122.0/26
content-type: text/html; charset=utf-8
x-request-id: 1066500424
location: https://www.ovhcloud.com/en/
content-length: 0

HTTP/2 200 
date: Mon, 16 Oct 2023 05:33:45 GMT
content-type: text/html
last-modified: Thu, 12 Oct 2023 15:01:51 GMT
vary: Accept-Encoding
etag: W/"65280a5f-6aea4"
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
x-content-type-options: nosniff
x-toujours-debout-location: BHS
x-toujours-debout-branch: A
cache-control: public, must-revalidate, max-age=90
x-iplb-request-id: 90D90242:E752_C063418B:01BB_652CCB39_0317:1118A
x-iplb-instance: 49227
x-cdn-pop: bhs
x-cdn-pop-ip: 137.74.122.0/26
x-request-id: 806395667
x-cacheable: Cacheable
accept-ranges: bytes

