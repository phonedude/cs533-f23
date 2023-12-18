> HTTP/1.1 200 OK
> Content-Type: text/html; charset=utf-8
> X-Frame-Options: DENY
> Vary: Sec-Fetch-Dest, Sec-Fetch-Mode, Sec-Fetch-Site
> x-auto-login: realm=com.google&args=service%3Dwise%26continue%3Dhttps://drive.google.com/
> x-ua-compatible: IE=edge
> Cache-Control: no-cache, no-store, max-age=0, must-revalidate
> Pragma: no-cache
> Expires: Mon, 01 Jan 1990 00:00:00 GMT
> Date: Fri, 06 Oct 2023 14:10:50 GMT
> Content-Length: 587415
> Strict-Transport-Security: max-age=31536000; includeSubDomains
> Report-To: {"group":"AccountsSignInUi","max_age":2592000,"endpoints":[{"url":"https://csp.withgoogle.com/csp/report-to/AccountsSignInUi"}]}
> Permissions-Policy: ch-ua-arch=*, ch-ua-bitness=*, ch-ua-full-version=*, ch-ua-full-version-list=*, ch-ua-model=*, ch-ua-wow64=*, ch-ua-form-factor=*, ch-ua-platform=*, ch-ua-platform-version=*
> Cross-Origin-Resource-Policy: same-site
> Accept-CH: Sec-CH-UA-Arch, Sec-CH-UA-Bitness, Sec-CH-UA-Full-Version, Sec-CH-UA-Full-Version-List, Sec-CH-UA-Model, Sec-CH-UA-WoW64, Sec-CH-UA-Form-Factor, Sec-CH-UA-Platform, Sec-CH-UA-Platform-Version
> Content-Security-Policy: require-trusted-types-for 'script';report-uri /v3/signin/_/AccountsSignInUi/cspreport
> Content-Security-Policy: script-src 'nonce-oQD7jCXnjAQMDJ1KqAwGPQ' 'unsafe-inline';object-src 'none';base-uri 'self';report-uri /v3/signin/_/AccountsSignInUi/cspreport;worker-src 'self'
> Cross-Origin-Opener-Policy-Report-Only: same-origin; report-to="AccountsSignInUi"
> Server: ESF
> X-XSS-Protection: 0
> X-Content-Type-Options: nosniff
> Alt-Svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000
> 
