HTTP/1.1 301 Moved Permanently
Server: CloudFront
Date: Mon, 16 Oct 2023 05:33:23 GMT
Content-Type: text/html
Content-Length: 167
Connection: keep-alive
Location: https://huffingtonpost.com/
X-Cache: Redirect from cloudfront
Via: 1.1 3ebe5e903d733a5e00724b1dfdba02bc.cloudfront.net (CloudFront)
X-Amz-Cf-Pop: IAD79-C3
X-Amz-Cf-Id: VaMFJovjjXfjZVp76rAhc4aH510hojWWv1OfItGdA6kMd71quFkqyQ==

HTTP/2 301 
content-length: 0
location: https://www.huffpost.com/
date: Sun, 15 Oct 2023 16:59:55 GMT
server: lighttpd/1.4.55
x-cache: Hit from cloudfront
via: 1.1 3ebe5e903d733a5e00724b1dfdba02bc.cloudfront.net (CloudFront)
x-amz-cf-pop: IAD79-C3
x-amz-cf-id: u4qGf0GwbaW3_fuNhN4mcoGyjjfIvdGFNVgoX_gutoRTk9G_N_A7iw==
age: 45208

HTTP/2 200 
content-type: text/html; charset=utf-8
cache-control: no-store, no-cache, must-revalidate
document-policy: js-profiling
expires: 0
link: <https://img.huffingtonpost.com>; rel=preconnect
link: <https://img.huffingtonpost.com>; rel=dns-prefetch
link: <https://fonts.gstatic.com>; rel=preconnect; crossorigin=anonymous
link: <https://fonts.gstatic.com>; rel=dns-prefetch
link: <https://cdn.cookielaw.org/scripttemplates/otSDKStub.js>; rel=preload; as=script
link: <https://cdn.cookielaw.org/opt-out/otCCPAiab.js>; rel=preload; as=script
link: <https://cd.connatix.com>; rel=preconnect
link: <https://cd.connatix.com>; rel=dns-prefetch
link: <https://cds.connatix.com>; rel=preconnect
link: <https://cds.connatix.com>; rel=dns-prefetch
link: <https://abeagle-public.buzzfeed.com>; rel=preconnect; crossorigin=anonymous
link: <https://abeagle-public.buzzfeed.com>; rel=dns-prefetch
link: <https://www.googletagmanager.com>; rel=preconnect
link: <https://www.googletagmanager.com>; rel=dns-prefetch
link: <https://fonts.gstatic.com/s/alfaslabone/v9/6NUQ8FmMKwSEKjnm5-4v-4Jh2dxhe_escmAm9w.woff2>; rel=preload; as=font; crossorigin=anonymous; type=font/woff2
link: <https://www.huffpost.com/static-assets/cambria/app/fonts/proxima-nova-regular.hash-79c14ea7490af62fc90c4c91a9ebdc4e.woff>; rel=preload; as=font; crossorigin=anonymous; type=font/woff
link: <https://www.huffpost.com/static-assets/cambria/app/fonts/proxima-nova-bold.hash-c5b5d29cb016c8df27f6fc56fb8d9a84.woff>; rel=preload; as=font; crossorigin=anonymous; type=font/woff
link: <https://www.huffpost.com/static-assets/cambria/app/fonts/proxima-nova-semibold.hash-f45999e0380f344650ac535a7a00e6a9.woff>; rel=preload; as=font; crossorigin=anonymous; type=font/woff
link: <https://www.huffpost.com/static-assets/cambria/app/fonts/proxima-nova-condensed-medium.hash-15d69e2022c9578256bf4293d7917299.woff2>; rel=preload; as=font; crossorigin=anonymous; type=font/woff2
link: <https://www.huffpost.com/static-assets/cambria/app/fonts/proxima-nova-condensed-bold.hash-cfe96e1adc5f15e8d1e1dbea32f45eaf.woff2>; rel=preload; as=font; crossorigin=anonymous; type=font/woff2
link: <https://www.huffpost.com/static-assets/cambria/app/fonts/proxima-nova-condensed-bold-italic.hash-22dfcf1417067b49e8c1e5304f3e60b5.woff2>; rel=preload; as=font; crossorigin=anonymous; type=font/woff2
link: <https://www.huffpost.com/static-assets/cambria/app/fonts/proxima-nova-condensed-extrabld.hash-40acc89242624bef183ace6be58d6dfd.woff2>; rel=preload; as=font; crossorigin=anonymous; type=font/woff2
link: <https://www.huffpost.com/static-assets/cambria/app/fonts/proxima-nova-condensed-extrabold-italic.hash-0ee0e93dd385edd2c35c066ec5916f29.woff2>; rel=preload; as=font; crossorigin=anonymous; type=font/woff2
link: <https://www.huffpost.com/static-assets/cambria/app/news.7cf7deb0e0d6cf1c81ff.js>; rel=preload; as=script
link: <https://www.huffpost.com/static-assets/cambria/app/news.3c3eba27d0800a74bce9.css>; rel=preload; as=style
link: <https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900&display=fallback>; rel=preload; as=style
link: <https://fonts.googleapis.com/css?family=Alfa+Slab+One&display=fallback>; rel=preload; as=style
link: <https://fonts.googleapis.com/css2?family=Source+Code+Pro:wght@600&display=fallback>; rel=preload; as=style
server: nginx
x-hp-page-version: 236230
x-hp-webp: false
x-powered-by: Express
x-request-id: a1ba26789d93c2d82197150390c41f4f
x-varnish-cambria-ttl: 5s
accept-ranges: bytes
date: Mon, 16 Oct 2023 05:33:23 GMT
via: 1.1 varnish
age: 250
x-served-by: cache-iad-kjyo7100080-IAD
x-cache: HIT
x-cache-hits: 1
x-timer: S1697434404.671800,VS0,VE15
x-content-type-options: nosniff
strict-transport-security: max-age=31536000
referrer-policy: no-referrer-when-downgrade
x-xss-protection: 1; mode=block
set-cookie: hp_taboola_test=control;expires=Tue, 17 Oct 2023 05:33:23 GMT;path=/; domain=www.huffpost.com;
content-security-policy: sandbox allow-forms allow-same-origin allow-scripts allow-popups allow-popups-to-escape-sandbox allow-presentation allow-top-navigation-by-user-activation; frame-ancestors 'self' *.huffpost.com *.huffingtonpost.com *.huffpost.net *.buzzfeed.com clients.opinary.com compass.pressekompass.net *.newsbreak.com *.newsbreakapp.com *.upday-content.com *.upday.com; report-uri https://huffpost.report-uri.com/r/d/csp/enforce;
set-cookie: bf-geo-country=US; expires=Tue, 17 Oct 2023 05:33:23 GMT; path=/; domain=www.huffpost.com;
set-cookie: ccpa=true; expires=Mon, 30 Oct 2023 05:33:23 GMT; path=/; domain=www.huffpost.com;
vary: Accept-Encoding
content-length: 697682

