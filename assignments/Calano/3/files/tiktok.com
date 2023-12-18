HTTP/1.1 301 Moved Permanently
Server: CloudFront
Date: Mon, 16 Oct 2023 05:34:09 GMT
Content-Type: text/html
Content-Length: 167
Connection: keep-alive
Location: https://tiktok.com/
X-Cache: Redirect from cloudfront
Via: 1.1 b467a4a34e9f37bba6d2f0aba8257b5e.cloudfront.net (CloudFront)
X-Amz-Cf-Pop: IAD12-P4
X-Amz-Cf-Id: LRBYpZKKFuFUmdoUKBCu4Ysr8tsJ07yiIZJQKAB0I9zahqU5ZWTaZQ==

HTTP/2 301 
server: CloudFront
date: Mon, 16 Oct 2023 05:34:09 GMT
content-length: 0
location: https://www.tiktok.com/
x-cache: FunctionGeneratedResponse from cloudfront
via: 1.1 a7a07e0b0db92670f70b5d65da05ed76.cloudfront.net (CloudFront)
x-amz-cf-pop: IAD12-P4
x-amz-cf-id: P-AD8EF7XYmhr6u6EaMFPWOSa9cxNwiJADtArH2YyM3BcCHwP7oOqA==
strict-transport-security: max-age=63072000; includeSubDomains; preload

HTTP/2 302 
server: nginx
content-type: text/html; charset=utf-8
content-length: 47
content-security-policy: script-src 'unsafe-eval' sf16-website-login.neutral.ttwstatic.com s20.tiktokcdn.com *.tiktokcdn-us.com www.google.com recaptcha.google.com js.hcaptcha.com client-api.arkoselabs.com www.gstatic.com connect.facebook.net;frame-src *.tiktok.com accounts.google.com www.google.com recaptcha.google.com www.facebook.com *.kakao.com lf16-web.tiktokcdn.com assets.braintreegateway.com appleid.apple.com access.line.me api.twitter.com h.online-metrix.net bytedance: newassets.hcaptcha.com client-api.arkoselabs.com;worker-src https: blob:
feature-policy: microphone 'none'; geolocation 'none'
location: /explore
referrer-policy: strict-origin-when-cross-origin
strict-transport-security: max-age=31536000; includeSubdomains
x-bytefaas-execution-duration: 48.33
x-bytefaas-request-id: 20231016053409476DDB2D8E042BC979ED
x-content-type-options: nosniff
x-download-options: noopen
x-frame-options: SAMEORIGIN
x-gw-dst-psm: serverless.tiktok.desktop
x-powered-by: Goofy Node
x-tt-logid: 20231016053409476DDB2D8E042BC979ED
x-xss-protection: 1; mode=block
server-timing: inner; dur=50
x-tt-trace-host: 019b847e3ae1dbb32df03d13ef678a7106600a588def24709a1d348c13e3264448458ea677f784083a8a7e1f1d3ea4d8bd8fa16cd3564b43915c023c5d0e7fadafe384c99240bc325598ebdfa46e6bab60e1c4ef7f2b54a5b37edc3229cdd90353
x-tt-trace-id: 00-231016053409476DDB2D8E042BC979ED-76755EB9414AF67B-00
expires: Mon, 16 Oct 2023 05:34:09 GMT
cache-control: max-age=0, no-cache, no-store
pragma: no-cache
date: Mon, 16 Oct 2023 05:34:09 GMT
x-cache: TCP_MISS from a23-202-158-5.deploy.akamaitechnologies.com (AkamaiGHost/11.2.5.2-51612204) (-)
set-cookie: tt_csrf_token=FIL2DA9s-0gGE68vZnY-OppuYw-ADcHtoBik; path=/; domain=.tiktok.com; samesite=lax; secure; httponly
set-cookie: ttwid=1%7CBBqSMp4VqR6aIheL33mW9n6oaubwOeGe7zsRJgF3NkE%7C1697434449%7C7124495c6421a8127a5e945f5a80a8cb35724df781b79a77f956207593385020; Domain=.tiktok.com; Path=/; Expires=Thu, 10 Oct 2024 05:34:09 GMT; HttpOnly
x-tt-trace-tag: id=16;cdn-cache=miss;type=dyn
server-timing: cdn-cache; desc=MISS, edge; dur=1, origin; dur=55
x-origin-response-time: 55,23.202.158.5
x-akamai-request-id: cfb22934

HTTP/2 403 
server: nginx
content-length: 0
x-tt-system-error: 3
proxy-status: 0000201403061000
x-tt-trace-host: 019b847e3ae1dbb32df03d13ef678a7106600a588def24709a1d348c13e32644485f3867ad755a3bb4bff52569229d2e382c7dcdf5437200f6bbc1b8adedb3d11e861dbbb0baee3b9089531156a9ed1b8e
x-tt-trace-id: 00-23101605340933BFDEBD4AA269B8E3B8-2229017D25BB1379-00
x-tt-logid: 2023101605340933BFDEBD4AA269B8E3B8
expires: Mon, 16 Oct 2023 05:34:09 GMT
cache-control: max-age=0, no-cache, no-store
pragma: no-cache
date: Mon, 16 Oct 2023 05:34:09 GMT
x-cache: TCP_MISS from a23-202-158-5.deploy.akamaitechnologies.com (AkamaiGHost/11.2.5.2-51612204) (-)
x-tt-trace-tag: id=16;cdn-cache=miss;type=dyn
server-timing: cdn-cache; desc=MISS, edge; dur=2, origin; dur=2
x-origin-response-time: 3,23.202.158.5
x-akamai-request-id: cfb22aec

