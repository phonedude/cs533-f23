HTTP/1.1 301 Moved Permanently
Connection: keep-alive
Content-Length: 232
Content-Type: text/html; charset=iso-8859-1
Location: https://www.dotdash.com/
Server: Apache/2.4.56 (Amazon) OpenSSL/1.0.2k-fips
Accept-Ranges: bytes
Date: Mon, 16 Oct 2023 05:32:50 GMT
Via: 1.1 varnish
Age: 1012856
cache-control: max-age=3600
X-Served-By: cache-iad-kjyo7100023-IAD
X-Cache: HIT
X-Cache-Hits: 1
X-Timer: S1697434370.156620,VS0,VE1

HTTP/2 301 
server: Varnish
retry-after: 0
location: https://www.dotdashmeredith.com/
accept-ranges: bytes
date: Mon, 16 Oct 2023 05:32:50 GMT
via: 1.1 varnish
cache-control: max-age=60
x-served-by: cache-iad-kiad7000110-IAD
x-cache: HIT
x-cache-hits: 0
x-timer: S1697434370.302670,VS0,VE1
content-length: 0

HTTP/2 200 
etag: "1fce4-f+D45IRRGXloZEZ5yVshF9H3f7c"
x-download-options: noopen
strict-transport-security: max-age=15552000; includeSubDomains
x-frame-options: SAMEORIGIN
referrer-policy: no-referrer
x-sigsci-agentresponse: 200
x-xss-protection: 0
x-content-type-options: nosniff
content-security-policy: script-src 'sha256-7HTkqKjSY2WBs3+tMOsL7y18FCEYBob3Jn1tq99Cn+E=' 'self' jobs.jobvite.com www.googletagmanager.com
x-sigsci-tags: DATACENTER,site.dotdashmeredith
content-type: text/html; charset=utf-8
x-permitted-cross-domain-policies: none
x-sigsci-decision-ms: 9
expect-ct: max-age=0
x-dns-prefetch-control: off
accept-ranges: bytes
date: Mon, 16 Oct 2023 05:32:50 GMT
via: 1.1 varnish
age: 481618
cache-control: max-age=60
x-served-by: cache-iad-kiad7000075-IAD, cache-iad-kiad7000031-IAD
x-cache: HIT
x-cache-hits: 1
vary: Accept-Encoding
content-length: 130276

