HTTP/1.1 302 Found
Location: https://www.android.com/
Cache-Control: private
Content-Type: text/html; charset=UTF-8
X-Content-Type-Options: nosniff
Date: Mon, 16 Oct 2023 05:32:55 GMT
Server: sffe
Content-Length: 221
X-XSS-Protection: 0

HTTP/2 200 
accept-ranges: bytes
vary: Accept-Encoding
content-type: text/html
content-length: 431568
content-security-policy-report-only: require-trusted-types-for 'script'; report-uri https://csp.withgoogle.com/csp/uxe-owners-acl/android
cross-origin-opener-policy-report-only: same-origin; report-to="uxe-owners-acl/android"
report-to: {"group":"uxe-owners-acl/android","max_age":2592000,"endpoints":[{"url":"https://csp.withgoogle.com/csp/report-to/uxe-owners-acl/android"}]}
date: Mon, 16 Oct 2023 05:32:55 GMT
expires: Mon, 16 Oct 2023 05:32:55 GMT
cache-control: private, max-age=3000
last-modified: Wed, 04 Oct 2023 13:48:00 GMT
x-content-type-options: nosniff
server: sffe
x-xss-protection: 0
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000

