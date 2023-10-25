HTTP/1.1 301 Moved Permanently
Server: nginx
Date: Mon, 16 Oct 2023 05:34:12 GMT
Content-Type: text/html
Content-Length: 162
Connection: keep-alive
Location: https://woocommerce.com/

HTTP/2 200 
server: nginx
date: Mon, 16 Oct 2023 05:34:12 GMT
content-type: text/html; charset=UTF-8
content-length: 226498
x-hacker: If you're reading this, you should visit wpvip.com/careers and apply to join the fun, mention this header.
x-powered-by: WordPress VIP <https://wpvip.com>
host-header: a9130478a60e5f9135f765b23f26593b
x-frame-options: SAMEORIGIN
content-security-policy: block-all-mixed-content
link: <https://woocommerce.com/wp-json/>; rel="https://api.w.org/"
link: <https://woocommerce.com/wp-json/wp/v2/pages/18734001744472>; rel="alternate"; type="application/json"
link: <https://woocommerce.com/>; rel=shortlink
x-rq: dca5 85 187 443
cache-control: max-age=300, must-revalidate
age: 78
x-cache: hit
vary: Accept-Encoding
accept-ranges: bytes
strict-transport-security: max-age=31536000

