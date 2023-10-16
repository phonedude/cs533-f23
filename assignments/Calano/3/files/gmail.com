HTTP/1.1 301 Moved Permanently
Location: https://mail.google.com/mail/u/0/
Cross-Origin-Resource-Policy: cross-origin
X-Content-Type-Options: nosniff
Server: sffe
Content-Length: 230
X-XSS-Protection: 0
Date: Mon, 16 Oct 2023 05:04:29 GMT
Expires: Mon, 16 Oct 2023 05:34:29 GMT
Cache-Control: public, max-age=1800
Content-Type: text/html; charset=UTF-8
Age: 1726

HTTP/2 302 
content-type: text/html; charset=UTF-8
location: https://accounts.google.com/ServiceLogin?service=mail&passive=1209600&osid=1&continue=https://mail.google.com/mail/u/0/&followup=https://mail.google.com/mail/u/0/&emr=1
strict-transport-security: max-age=10886400; includeSubDomains
permissions-policy: ch-ua-arch=*, ch-ua-bitness=*, ch-ua-full-version=*, ch-ua-full-version-list=*, ch-ua-model=*, ch-ua-wow64=*, ch-ua-form-factor=*, ch-ua-platform=*, ch-ua-platform-version=*
date: Mon, 16 Oct 2023 05:33:15 GMT
expires: Mon, 16 Oct 2023 05:33:15 GMT
cache-control: private, max-age=0
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
content-security-policy: frame-ancestors 'self'
x-xss-protection: 1; mode=block
server: GSE
alt-svc: clear
accept-ranges: none
vary: Accept-Encoding

HTTP/2 302 
content-type: application/binary
set-cookie: __Host-GAPS=1:OstI-JK4qlzPSVX4E-ywT_X6odI6lA:RShaa8KUov4sjyjm; Expires=Wed, 15-Oct-2025 05:33:15 GMT; Path=/; Secure; HttpOnly; Priority=HIGH
cache-control: no-cache, no-store, max-age=0, must-revalidate
pragma: no-cache
expires: Mon, 01 Jan 1990 00:00:00 GMT
date: Mon, 16 Oct 2023 05:33:15 GMT
location: https://accounts.google.com/InteractiveLogin?continue=https://mail.google.com/mail/u/0/&emr=1&followup=https://mail.google.com/mail/u/0/&osid=1&passive=1209600&service=mail&ifkv=AVQVeyxYLOrrz_MN3GLlCovjXa63UJTkyRdVVA6mcB1UXtbvGdZz6KXdoL9Lm9c_9IQky6ZrTUicKQ
content-length: 0
strict-transport-security: max-age=31536000; includeSubDomains
accept-ch: Sec-CH-UA-Arch, Sec-CH-UA-Bitness, Sec-CH-UA-Full-Version, Sec-CH-UA-Full-Version-List, Sec-CH-UA-Model, Sec-CH-UA-WoW64, Sec-CH-UA-Form-Factor, Sec-CH-UA-Platform, Sec-CH-UA-Platform-Version
cross-origin-opener-policy: unsafe-none
cross-origin-resource-policy: cross-origin
permissions-policy: ch-ua-arch=*, ch-ua-bitness=*, ch-ua-full-version=*, ch-ua-full-version-list=*, ch-ua-model=*, ch-ua-wow64=*, ch-ua-form-factor=*, ch-ua-platform=*, ch-ua-platform-version=*
content-security-policy: require-trusted-types-for 'script';report-uri /_/AccountsSigninPassiveLoginHttp/cspreport
content-security-policy: script-src 'nonce--QWZXJTwaUirde4IS9yXtw' 'unsafe-inline';object-src 'none';base-uri 'self';report-uri /_/AccountsSigninPassiveLoginHttp/cspreport;worker-src 'self'
server: ESF
x-xss-protection: 0
x-content-type-options: nosniff
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000

HTTP/2 302 
content-type: text/html; charset=UTF-8
set-cookie: __Host-GAPS=1:ywxiQqyhlOndIUhJd7WTV2wCUMK5lA:gaOWY0_vnjsdQhVF;Path=/;Expires=Wed, 15-Oct-2025 05:33:15 GMT;Secure;HttpOnly;Priority=HIGH
x-frame-options: DENY
cache-control: no-cache, no-store, max-age=0, must-revalidate
pragma: no-cache
expires: Mon, 01 Jan 1990 00:00:00 GMT
date: Mon, 16 Oct 2023 05:33:15 GMT
location: https://accounts.google.com/v3/signin/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2Fu%2F0%2F&emr=1&followup=https%3A%2F%2Fmail.google.com%2Fmail%2Fu%2F0%2F&ifkv=AVQVeyz75FrntPm-zy9PCA6sUlZJxoKBZfeq3eKZIfYdJ8C_fkT9cO9Ozy6ZMefYysLgOI5Ts8G9HA&osid=1&passive=1209600&service=mail&flowName=WebLiteSignIn&flowEntry=ServiceLogin&dsh=S-1693767292%3A1697434395666349
content-length: 588
strict-transport-security: max-age=31536000; includeSubDomains
report-to: {"group":"coop_gse_qebhlk","max_age":2592000,"endpoints":[{"url":"https://csp.withgoogle.com/csp/report-to/gse_qebhlk"}]}
content-security-policy: script-src 'nonce-_zYgSHWg-5cnwP3BjU6iUg' 'unsafe-inline' 'unsafe-eval';object-src 'none';base-uri 'self';report-uri /cspreport
content-security-policy: require-trusted-types-for 'script';report-uri /cspreport
cross-origin-opener-policy-report-only: same-origin; report-to="coop_gse_qebhlk"
x-content-type-options: nosniff
x-xss-protection: 1; mode=block
server: GSE
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000

HTTP/2 200 
content-type: text/html; charset=utf-8
x-frame-options: DENY
set-cookie: __Host-GAPS=1:nwmfHd6nszeVJbqzblGYJZcq6A9LQA:8Ya1S6FIN8jMgR9f; Expires=Wed, 15-Oct-2025 05:33:15 GMT; Path=/; Secure; HttpOnly; Priority=HIGH
vary: Sec-Fetch-Dest, Sec-Fetch-Mode, Sec-Fetch-Site
x-auto-login: realm=com.google&args=service%3Dmail%26continue%3Dhttps://mail.google.com/mail/u/0/
link: <https://www.google.com/gmail/>; rel="canonical"
x-ua-compatible: IE=edge
cache-control: no-cache, no-store, max-age=0, must-revalidate
pragma: no-cache
expires: Mon, 01 Jan 1990 00:00:00 GMT
date: Mon, 16 Oct 2023 05:33:15 GMT
content-length: 588486
strict-transport-security: max-age=31536000; includeSubDomains
cross-origin-opener-policy-report-only: same-origin; report-to="AccountsSignInUi"
report-to: {"group":"AccountsSignInUi","max_age":2592000,"endpoints":[{"url":"https://csp.withgoogle.com/csp/report-to/AccountsSignInUi"}]}
cross-origin-resource-policy: same-site
content-security-policy: require-trusted-types-for 'script';report-uri /v3/signin/_/AccountsSignInUi/cspreport
content-security-policy: script-src 'nonce-xQ38wWkraC4bTmqDtfw1Yw' 'unsafe-inline';object-src 'none';base-uri 'self';report-uri /v3/signin/_/AccountsSignInUi/cspreport;worker-src 'self'
permissions-policy: ch-ua-arch=*, ch-ua-bitness=*, ch-ua-full-version=*, ch-ua-full-version-list=*, ch-ua-model=*, ch-ua-wow64=*, ch-ua-form-factor=*, ch-ua-platform=*, ch-ua-platform-version=*
accept-ch: Sec-CH-UA-Arch, Sec-CH-UA-Bitness, Sec-CH-UA-Full-Version, Sec-CH-UA-Full-Version-List, Sec-CH-UA-Model, Sec-CH-UA-WoW64, Sec-CH-UA-Form-Factor, Sec-CH-UA-Platform, Sec-CH-UA-Platform-Version
server: ESF
x-xss-protection: 0
x-content-type-options: nosniff
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000

