> HTTP/1.1 200 OK
> content-security-policy: upgrade-insecure-requests
> cross-origin-opener-policy: same-origin
> cross-origin-resource-policy: same-origin
> origin-agent-cluster: ?1
> referrer-policy: strict-origin-when-cross-origin
> strict-transport-security: max-age=15552000; includeSubDomains
> x-content-type-options: nosniff
> x-dns-prefetch-control: off
> x-download-options: noopen
> x-frame-options: SAMEORIGIN
> x-permitted-cross-domain-policies: none
> x-xss-protection: 0
> x-version: 1.384.0
> x-server-by: softonic
> x-resource-id: @softonic/home
> x-page-id: home
> x-request-id: 4c65e3ac-cd0e-4156-ae5f-cec73dd08bb3
> permissions-policy: accelerometer=(), autoplay=(), camera=(), encrypted-media=(), fullscreen=(), geolocation=(), gyroscope=(), magnetometer=(), microphone=(), midi=(), payment=(), picture-in-picture=(), publickey-credentials-get=(), screen-wake-lock=(), sync-xhr=(), usb=()
> content-language: en-US
> cache-control: public,max-age=900,stale-while-revalidate=1800,stale-if-error=1800
> xkey: en-article-list
> content-type: text/html;charset=utf-8
> date: Fri, 06 Oct 2023 13:57:08 GMT
> vary: x-country-group,x-is-landing,accept-encoding
> etag: W/"1wb8y89"
> content-encoding: gzip
> x-varnish: 407396 25221
> x-varnish: 83427871 19234680
> age: 877
> accept-ranges: bytes
> access-control-expose-headers: x-country-code,x-region
> x-country-code: US
> x-region: VA
> x-envoy-upstream-service-time: 4
> server: istio-envoy
> Via: 1.1 softonic-varnish-shield-5b88cb8df5-9j6bw (Varnish/7.2), 1.1 softonic-varnish-edge-69c6f667bb-vds57 (Varnish/7.2), 1.1 google
> Transfer-Encoding: chunked
> Alt-Svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000
> 
