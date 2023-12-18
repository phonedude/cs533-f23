HTTP/1.1 301 Moved Permanently
Connection: close
Content-Length: 0
Server: Varnish
Retry-After: 0
Location: https://www.theatlantic.com/
Accept-Ranges: bytes
Date: Mon, 16 Oct 2023 05:34:06 GMT
Via: 1.1 varnish
X-Served-By: cache-iad-kjyo7100038-IAD
X-Cache: HIT
X-Cache-Hits: 0
X-Timer: S1697434447.936966,VS0,VE0
Set-Cookie: atltestbucketv1=17; Domain=.theatlantic.com; Path=/; Max-Age=7776000
Vary: Origin
x-is-gdpr: 0
Set-Cookie: is_gdpr=0; Domain=.theatlantic.com; Path=/; Max-Age=3600
Set-Cookie: kppid=_ulasy1eihc; Path=/; Max-Age=31536000; Domain=.theatlantic.com
state: HIT-SYNTH
Set-Cookie: atl_uuid=c554fedb-5ea7-418b-9c74-b30c3f236b7c; Path=/; Expires=Tue, 19 Jan 2038 03:14:07 GMT; Domain=.theatlantic.com
Strict-Transport-Security: max-age=300

HTTP/2 200 
content-type: text/html; charset=utf-8
cache-control: s-maxage=180
etag: "4i43d2lrt25k7s"
accept-ranges: bytes
date: Mon, 16 Oct 2023 05:34:07 GMT
via: 1.1 varnish
age: 123
x-served-by: cache-iad-kjyo7100114-IAD
x-cache: HIT
x-cache-hits: 1
x-timer: S1697434447.063781,VS0,VE2
set-cookie: atltestbucketv1=0; Domain=.theatlantic.com; Path=/; Max-Age=7776000
vary: X-JWT-State, X-JWT-PaymeterAccess, X-JWT-AdFree, Accept-Encoding, x-is-gdpr,Origin
x-is-gdpr: 0
set-cookie: is_gdpr=0; Domain=.theatlantic.com; Path=/; Max-Age=3600
x-jwt-state: Anonymous
set-cookie: kppid=19obym_rd3l; Path=/; Max-Age=31536000; Domain=.theatlantic.com
state: HIT-CLUSTER
set-cookie: atl_uuid=055950cc-de23-46c6-bfce-56ec1cd94419; Path=/; Expires=Tue, 19 Jan 2038 03:14:07 GMT; Domain=.theatlantic.com
strict-transport-security: max-age=300
content-length: 259624

