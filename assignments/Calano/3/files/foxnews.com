HTTP/1.1 301 Moved Permanently
Server: AkamaiGHost
Content-Length: 0
Location: https://foxnews.com/
Date: Mon, 16 Oct 2023 05:33:13 GMT
Connection: keep-alive

HTTP/1.1 301 Moved Permanently
Server: AkamaiGHost
Content-Length: 0
Location: https://www.foxnews.com/
Date: Mon, 16 Oct 2023 05:33:13 GMT
Connection: keep-alive
Strict-Transport-Security: max-age=86400 ; preload

HTTP/2 200 
content-length: 619245
content-type: text/html; charset=UTF-8
x-amz-server-side-encryption: AES256
last-modified: Mon, 16 Oct 2023 05:23:14 GMT
etag: "dcd4c04f9eb8c77d9c126ab168c17c8a"
x-debug-backend: prod_fn_hp_foxnews
x-debug-url: /index.html
accept-ranges: bytes
accept-ch: Sec-CH-UA-Mobile, Sec-CH-UA-Model, Sec-CH-UA-Platform, Sec-CH-UA-Platform, Sec-CH-UA-Platform-Version, Sec-CH-UA, Sec-CH-UA-Arch, Sec-CH-UA-Bitness
permissions-policy: ch-ua-model=*,ch-ua-platform-version=*,ch-ua=*,ch-ua-mobile=*,ch-ua-platform=*,ch-ua-full-version-list=*,ch-ua-arch=*,ch-ua-bitness=*,ch-ua-model=*
x-served-by: cache-iad-kjyo7100096-IAD, cache-iad-kjyo7100120-IAD
x-cache-hits: 0, 1
x-timer: S1697433802.274702,VS0,VE3
expires: Mon, 16 Oct 2023 05:33:14 GMT
pragma: no-cache
date: Mon, 16 Oct 2023 05:33:14 GMT
access-control-allow-credentials: false
access-control-max-age: 86400
access-control-allow-headers: *
access-control-allow-methods: GET,HEAD,OPTIONS
access-control-allow-origin: *
strict-transport-security: max-age=7884000 ; preload
surrogate-control: max-age=1200
cache-control: max-age=60, public

