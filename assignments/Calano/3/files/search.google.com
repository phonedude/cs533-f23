HTTP/1.1 301 Moved Permanently
Location: https://www.google.com/
Cross-Origin-Resource-Policy: cross-origin
Content-Type: text/html; charset=UTF-8
X-Content-Type-Options: nosniff
Date: Mon, 16 Oct 2023 05:33:56 GMT
Expires: Mon, 16 Oct 2023 06:03:56 GMT
Cache-Control: public, max-age=1800
Server: sffe
Content-Length: 220
X-XSS-Protection: 0

HTTP/2 200 
content-type: text/html; charset=ISO-8859-1
content-security-policy-report-only: object-src 'none';base-uri 'self';script-src 'nonce-3J8-HUm4ooEOOkPQbu9ecg' 'strict-dynamic' 'report-sample' 'unsafe-eval' 'unsafe-inline' https: http:;report-uri https://csp.withgoogle.com/csp/gws/other-hp
p3p: CP="This is not a P3P policy! See g.co/p3phelp for more info."
date: Mon, 16 Oct 2023 05:33:56 GMT
server: gws
x-xss-protection: 0
x-frame-options: SAMEORIGIN
expires: Mon, 16 Oct 2023 05:33:56 GMT
cache-control: private
set-cookie: 1P_JAR=2023-10-16-05; expires=Wed, 15-Nov-2023 05:33:56 GMT; path=/; domain=.google.com; Secure
set-cookie: AEC=Ackid1RyIi2hHSQPzZU_DOaDCBsE1wojYH0wgSIXhCmUNL97mKVZQXwABWc; expires=Sat, 13-Apr-2024 05:33:56 GMT; path=/; domain=.google.com; Secure; HttpOnly; SameSite=lax
set-cookie: NID=511=hIt-oTx1ol4rQhNDAnG1IZ6lLyFdiPEsadj7qcYcLWqyOK934FAoTMIehPVOusi0K-P5HrxZ-e9CU61KKsqlyQ9qsmpeaiK7yyXSxzeuUWy9aORmknD5nA2OAx7z8pSRrezublkwYFA1zkOXk8Ut3ShfEIpMX561AT7X-EqlUPM; expires=Tue, 16-Apr-2024 05:33:56 GMT; path=/; domain=.google.com; HttpOnly
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000

