> HTTP/1.1 200 OK
> Accept-Ranges: bytes
> Vary: Accept-Encoding
> Content-Type: text/html
> Content-Length: 5418
> Content-Security-Policy-Report-Only: script-src 'nonce-zz9oo0FYlViWob5nSkodCw' 'report-sample' 'strict-dynamic' 'unsafe-eval' 'unsafe-inline' http: https:; object-src 'none'; report-uri https://csp.withgoogle.com/csp/codesite; base-uri 'none'
> Content-Security-Policy-Report-Only: require-trusted-types-for 'script'; report-uri https://csp.withgoogle.com/csp/codesite
> Cross-Origin-Resource-Policy: cross-origin
> Cross-Origin-Opener-Policy: same-origin; report-to="codesite"
> Report-To: {"group":"codesite","max_age":2592000,"endpoints":[{"url":"https://csp.withgoogle.com/csp/report-to/codesite"}]}
> Date: Fri, 06 Oct 2023 14:10:48 GMT
> Pragma: no-cache
> Expires: Fri, 01 Jan 1990 00:00:00 GMT
> Cache-Control: no-cache, must-revalidate
> Last-Modified: Wed, 27 Sep 2023 22:08:00 GMT
> X-Content-Type-Options: nosniff
> Server: sffe
> X-XSS-Protection: 0
> Alt-Svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000
> 
