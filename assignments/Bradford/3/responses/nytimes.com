> HTTP/1.1 200 OK
> Connection: close
> Content-Length: 255580
> Server: nginx
> Content-Type: text/html; charset=utf-8
> x-b3-traceid: 52f54fe7bcc6435eb8ab0f00ca9f52fc
> x-nyt-data-last-modified: Fri, 06 Oct 2023 14:11:08 GMT
> Last-Modified: Fri, 06 Oct 2023 14:11:08 GMT
> X-PageType: vi-homepage
> X-XSS-Protection: 1; mode=block
> X-Content-Type-Options: nosniff
> Content-Encoding: gzip
> cache-control: s-maxage=30,no-cache
> x-nyt-route: homepage
> X-Origin-Time: 2023-10-06 14:11:13 UTC
> Accept-Ranges: bytes
> Date: Fri, 06 Oct 2023 14:11:32 GMT
> Age: 19
> X-Served-By: cache-lga21973-LGA, cache-iad-kjyo7100080-IAD
> X-Cache: HIT, HIT
> X-Cache-Hits: 3, 1
> X-Timer: S1696601493.556295,VS0,VE4
> Vary: Accept-Encoding, Fastly-SSL
> Set-Cookie: nyt-a=g8I-wxhMX1WbyTLYoTyN9S; Expires=Sat, 05 Oct 2024 14:11:32 GMT; Path=/; Domain=.nytimes.com; SameSite=none; Secure
> Set-Cookie: nyt-gdpr=0; Expires=Fri, 06 Oct 2023 20:11:32 GMT; Path=/; Domain=.nytimes.com
> Set-Cookie: nyt-purr=cfshcfhshckfhdfs; Expires=Sat, 05 Oct 2024 14:11:32 GMT; Path=/; Domain=.nytimes.com; SameSite=Lax; Secure
> Set-Cookie: nyt-geo=US; Expires=Fri, 06 Oct 2023 20:11:32 GMT; Path=/; Domain=.nytimes.com
> Set-Cookie: nyt-b3-traceid=024fc4567f8b495a9148b3affee6e567; Path=/; Domain=.nytimes.com; SameSite=none; Secure
> x-nyt-app-webview: 0
> x-gdpr: 0
> X-Frame-Options: DENY
> onion-location: https://www.nytimesn7cgmftshazwhfgzm37qxb44r64ytbb2dj3x62d2lljsciiyd.onion/
> X-API-Version: F-F-VI
> Content-Security-Policy: upgrade-insecure-requests; default-src data: 'unsafe-inline' 'unsafe-eval' https:; script-src data: 'unsafe-inline' 'unsafe-eval' https: blob:; style-src data: 'unsafe-inline' https:; img-src data: https: blob: android-webview-video-poster:; font-src data: https:; connect-src https: wss: blob:; media-src data: https: blob:; object-src https:; child-src https: data: blob:; form-action https:; report-uri https://csp.nytimes.com/report;
> Strict-Transport-Security: max-age=63072000; preload; includeSubdomains
> x-nyt-edge-cache: HIT-HIT
> 
