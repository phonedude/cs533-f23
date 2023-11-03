HTTP/1.1 302 Found
Content-Type: application/binary
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Pragma: no-cache
Expires: Mon, 01 Jan 1990 00:00:00 GMT
Date: Mon, 16 Oct 2023 05:33:46 GMT
Location: http://play.google.com/store
Content-Length: 0
P3P: CP="This is not a P3P policy! See g.co/p3phelp for more info."
Server: ESF
X-XSS-Protection: 0
X-Frame-Options: SAMEORIGIN
X-Content-Type-Options: nosniff
Set-Cookie: NID=511=D7CzxHh-5tjP84orTl-rYyRw2ZybQWq-21_rTfZOZ1Gw-v6paTpbLFo6uZXMtgPQoZ5NXUcChmDYrcfR-HYeylHmRLl538ghuHF0AygQkOUZ79rplB0ZLq-zYju_vfnlxk43g42lUCGirUNJpj0xzrxxXhUO0bLP4GuUX0twrKY; expires=Tue, 16-Apr-2024 05:33:46 GMT; path=/; domain=.google.com; HttpOnly

HTTP/1.1 301 Moved Permanently
Content-Type: application/binary
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Pragma: no-cache
Expires: Mon, 01 Jan 1990 00:00:00 GMT
Date: Mon, 16 Oct 2023 05:33:46 GMT
Location: https://play.google.com/store
Content-Length: 0
P3P: CP="This is not a P3P policy! See g.co/p3phelp for more info."
Server: ESF
X-XSS-Protection: 0
X-Frame-Options: SAMEORIGIN
X-Content-Type-Options: nosniff
Set-Cookie: NID=511=vZUAblF_iNsE-35OowA4bwY4b1k33xLu18GFvYH03sF6MvJ2Kw4sZyNe22YscvoFf-6kp1RkiF9cGdi99kkpwIueDpuwsebfd0FpGIah5-0ioj-C83R-MQRtWzqePyg5VqWKntR1FUbKqPEx82Ss9uk4I02NXtXM_TpRrgBp8Vo; expires=Tue, 16-Apr-2024 05:33:46 GMT; path=/; domain=.google.com; HttpOnly

HTTP/2 302 
content-type: application/binary
vary: Sec-Fetch-Dest, Sec-Fetch-Mode, Sec-Fetch-Site
cache-control: no-cache, no-store, max-age=0, must-revalidate
pragma: no-cache
expires: Mon, 01 Jan 1990 00:00:00 GMT
date: Mon, 16 Oct 2023 05:33:46 GMT
location: https://play.google.com/store/games
content-length: 0
p3p: CP="This is not a P3P policy! See g.co/p3phelp for more info."
strict-transport-security: max-age=31536000
cross-origin-opener-policy: same-origin-allow-popups
permissions-policy: ch-ua-arch=*, ch-ua-bitness=*, ch-ua-full-version=*, ch-ua-full-version-list=*, ch-ua-model=*, ch-ua-wow64=*, ch-ua-form-factor=*, ch-ua-platform=*, ch-ua-platform-version=*
content-security-policy: script-src 'nonce-5eQ2JrvtDjZEL2ogPKB4Pw' 'unsafe-inline' 'unsafe-eval';object-src 'none';base-uri 'self';report-uri /_/PlayStoreUi/cspreport;worker-src 'self'
content-security-policy: require-trusted-types-for 'script';report-uri /_/PlayStoreUi/cspreport
accept-ch: Sec-CH-UA-Arch, Sec-CH-UA-Bitness, Sec-CH-UA-Full-Version, Sec-CH-UA-Full-Version-List, Sec-CH-UA-Model, Sec-CH-UA-WoW64, Sec-CH-UA-Form-Factor, Sec-CH-UA-Platform, Sec-CH-UA-Platform-Version
cross-origin-resource-policy: same-site
server: ESF
x-xss-protection: 0
x-frame-options: SAMEORIGIN
x-content-type-options: nosniff
set-cookie: NID=511=blBFDMtX0K3OLJ2D-j-tPqJrdQJRONAGV-9UwEvXb6lWgIhfKzVAHBMTNvAgHtE9DVd4_Pnt4bvvhe5Azg18v4I_iu19xd6vxhRR30t7NPAPlUsWkbHgr7MOWtfFkEF35dN0Yxy2vDBy8l_kJdon6VfgsT0LZV-m7CCJ0p5P_7o; expires=Tue, 16-Apr-2024 05:33:46 GMT; path=/; domain=.google.com; HttpOnly
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000

HTTP/2 200 
content-type: text/html; charset=utf-8
vary: Sec-Fetch-Dest, Sec-Fetch-Mode, Sec-Fetch-Site
x-ua-compatible: IE=edge
cache-control: no-cache, no-store, max-age=0, must-revalidate
pragma: no-cache
expires: Mon, 01 Jan 1990 00:00:00 GMT
date: Mon, 16 Oct 2023 05:33:46 GMT
content-length: 2475674
p3p: CP="This is not a P3P policy! See g.co/p3phelp for more info."
strict-transport-security: max-age=31536000
content-security-policy: require-trusted-types-for 'script';report-uri /_/PlayStoreUi/cspreport
content-security-policy: script-src 'nonce-9tqJS2NG3fOZc3CtZORJlA' 'unsafe-inline' 'unsafe-eval';object-src 'none';base-uri 'self';report-uri /_/PlayStoreUi/cspreport;worker-src 'self'
cross-origin-opener-policy: same-origin-allow-popups
permissions-policy: ch-ua-arch=*, ch-ua-bitness=*, ch-ua-full-version=*, ch-ua-full-version-list=*, ch-ua-model=*, ch-ua-wow64=*, ch-ua-form-factor=*, ch-ua-platform=*, ch-ua-platform-version=*
accept-ch: Sec-CH-UA-Arch, Sec-CH-UA-Bitness, Sec-CH-UA-Full-Version, Sec-CH-UA-Full-Version-List, Sec-CH-UA-Model, Sec-CH-UA-WoW64, Sec-CH-UA-Form-Factor, Sec-CH-UA-Platform, Sec-CH-UA-Platform-Version
cross-origin-resource-policy: same-site
server: ESF
x-xss-protection: 0
x-frame-options: SAMEORIGIN
x-content-type-options: nosniff
set-cookie: NID=511=SCm_Y2BIg9gsYMndwpyFHM2jz-LSVCjnfCdFd1iH0Mc9O5RPnLuHb_Kg-sBmYXv9hHP5asqJ-qifEU-oQQOIdzWHeYzmgppPY6hCo1NdXXR4nzzb-7Zn3yBW9sBEGc2enlPGcXWfdbKlMFFNCMuHr1y_zU8vz4RKTnLaMi6bJfw; expires=Tue, 16-Apr-2024 05:33:46 GMT; path=/; domain=.google.com; HttpOnly
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000

