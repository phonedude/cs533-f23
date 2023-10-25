> HTTP/1.1 200 OK
> Connection: keep-alive
> Content-Length: 65607
> Content-Type: text/html; charset=utf-8
> Server: nginx
> X-Frame-Options: SAMEORIGIN
> X-XSS-Protection: 1; mode=block
> X-Content-Type-Options: nosniff
> X-Download-Options: noopen
> X-Permitted-Cross-Domain-Policies: none
> Referrer-Policy: strict-origin-when-cross-origin
> Content-Security-Policy: default-src https: data: 'unsafe-inline' 'unsafe-eval'; child-src https: data: blob:; connect-src https: data: blob: wss://voxbookclub.coral.coralproject.net/api/graphql/live; font-src https: data:; img-src https: data: blob:; media-src https: data: blob:; object-src https:; script-src https: data: blob: 'unsafe-inline' 'unsafe-eval'; style-src https: 'unsafe-inline'; block-all-mixed-content; upgrade-insecure-requests
> Link: <https://concertads-configs.vox-cdn.com/sbn/vox/config.json>; rel=preload; as=fetch; crossorigin
> Cache-Control: max-age=0, public, must-revalidate
> ETag: W/"61ff467b771abbe007de275d6777c076"
> X-Request-Id: 72e223b2845d0a5b31ee22bee70f84f59fde33f5
> X-Runtime: 0.236702
> Strict-Transport-Security: max-age=31556952; preload
> Content-Encoding: gzip
> Accept-Ranges: bytes
> Date: Fri, 06 Oct 2023 14:12:12 GMT
> Via: 1.1 varnish
> Age: 191
> Set-Cookie: _chorus_geoip_continent=NA; expires=Sat, 07 Oct 2023 14:12:12 GMT; path=/;
> Set-Cookie: vmidv1=9381b8d0-bcf8-49b0-a7b0-82d1cfe73ea1;Expires=Wed, 04 Oct 2028 14:12:12 GMT;Domain=www.vox.com;Path=/;SameSite=Lax;Secure
> X-Served-By: cache-iad-kiad7000047-IAD
> X-Cache: HIT
> X-Cache-Hits: 1
> X-Timer: S1696601533.746033,VS0,VE1
> Vary: Accept-Encoding, X-Chorus-Unison-Testing, X-Chorus-Require-Privacy-Consent, X-Chorus-Restrict-In-Privacy-Consent-Region, Origin, X-Forwarded-Proto, X-Chorus-Unison-Testing, X-Chorus-Require-Privacy-Consent, X-Chorus-Restrict-In-Privacy-Consent-Region
> alt-svc: h3=":443";ma=86400,h3-29=":443";ma=86400,h3-27=":443";ma=86400
> 
