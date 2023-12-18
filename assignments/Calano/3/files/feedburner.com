HTTP/1.1 301 Moved Permanently
Location: http://feedburner.google.com/
Cross-Origin-Resource-Policy: cross-origin
Content-Type: text/html; charset=UTF-8
X-Content-Type-Options: nosniff
Date: Mon, 16 Oct 2023 05:33:12 GMT
Expires: Mon, 16 Oct 2023 06:03:12 GMT
Cache-Control: public, max-age=1800
Server: sffe
Content-Length: 226
X-XSS-Protection: 0

HTTP/1.1 200 OK
Accept-Ranges: bytes
Vary: Accept-Encoding
Content-Type: text/html
Content-Length: 1362
Content-Security-Policy: script-src 'nonce-rqKKh9flJYPHxOGR4zLtHg' 'report-sample' 'strict-dynamic' 'unsafe-eval' 'unsafe-inline' http: https:; object-src 'none'; report-uri https://csp.withgoogle.com/csp/pichu-static; base-uri 'none'
Content-Security-Policy: require-trusted-types-for 'script'; report-uri https://csp.withgoogle.com/csp/pichu-static
Cross-Origin-Opener-Policy: same-origin; report-to="pichu-static"
Report-To: {"group":"pichu-static","max_age":2592000,"endpoints":[{"url":"https://csp.withgoogle.com/csp/report-to/pichu-static"}]}
X-Frame-Options: deny
Date: Mon, 16 Oct 2023 05:33:12 GMT
Pragma: no-cache
Expires: Fri, 01 Jan 1990 00:00:00 GMT
Cache-Control: no-cache, must-revalidate
Last-Modified: Tue, 27 Jun 2023 17:28:00 GMT
X-Content-Type-Options: nosniff
Server: sffe
X-XSS-Protection: 0

