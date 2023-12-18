> HTTP/1.1 200 OK
> expect-ct: max-age=31536000, report-uri="http://csp.yahoo.com/beacon/csp?src=yahoocom-expect-ct-report-only
> referrer-policy: no-referrer-when-downgrade
> strict-transport-security: max-age=31536000
> x-content-type-options: nosniff
> x-frame-options: SAMEORIGIN
> x-xss-protection: 1; mode=block
> content-type: text/html; charset=utf-8
> vary: Accept-Encoding
> date: Fri, 06 Oct 2023 14:11:32 GMT
> x-envoy-upstream-service-time: 329
> server: ATS
> Age: 1
> Connection: keep-alive
> Content-Security-Policy: frame-ancestors 'self' https://*.builtbygirls.com https://*.rivals.com https://*.engadget.com https://*.intheknow.com https://*.autoblog.com https://*.techcrunch.com https://*.yahoo.com https://*.aol.com https://*.huffingtonpost.com https://*.oath.com https://*.search.yahoo.com https://*.pnr.ouryahoo.com https://pnr.ouryahoo.com https://*.search.aol.com https://*.search.huffpost.com https://*.onesearch.com https://*.verizonmedia.com https://*.publishing.oath.com https://*.autoblog.com; sandbox allow-forms allow-same-origin allow-scripts allow-popups allow-popups-to-escape-sandbox allow-presentation; report-uri https://csp.yahoo.com/beacon/csp?src=ats&site=news&region=US&lang=en-US&device=desktop&yrid=2487b1tii05cj&partner=;
> 
