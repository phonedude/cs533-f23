HTTP/1.1 301 Moved Permanently
Location: https://netflix.com/
Content-Length: 0
Via: 1.1 i-0768ff601ba07ccc2 (us-east-1)
Server: nq_website_nonmember-prod-release UNKNOWN
X-Xss-Protection: 1; mode=block; report=https://www.netflix.com/ichnaea/log/freeform/xssreport
X-Content-Type-Options: nosniff
Strict-Transport-Security: max-age=31536000; includeSubDomains
X-Originating-URL: http://netflix.com/
Set-Cookie: nfvdid=BQFmAAEBEPzLH5AbU1ytM07PzIK7SB9A1NPstxx-C4OI_PoMJ4D0BvY5T7tE5Pv5o9favQ3C7abwwlLkL3S_AZTc4qZ7fwaGHlZJY2W83tDQ41OOqOHILg%3D%3D; Domain=.netflix.com; Path=/; Max-Age=31536000
X-Netflix.nfstatus: 1_21
X-Netflix.proxy.execution-time: 5

HTTP/2 405 
server: nq_website_nonmember-prod-release 034b19f0-88e4-4733-be83-bd4ac1f52a33
x-frame-options: DENY
allow: GET, OPTIONS, POST
date: Mon, 16 Oct 2023 05:33:41 GMT
x-envoy-upstream-service-time: 5
x-b3-traceid: c34984768128f6ed
x-request-id: 2507476f-5937-40c8-98f3-f2d44830427c
x-envoy-decorator-operation: lo_svc
via: 2 i-00999402c3820a0fc (us-east-1)
x-xss-protection: 1; mode=block; report=https://www.netflix.com/ichnaea/log/freeform/xssreport
x-content-type-options: nosniff
strict-transport-security: max-age=31536000; includeSubDomains
x-originating-url: http://netflix.com/
edge-control: no-cache, no-store
cache-control: no-cache, no-store
set-cookie: nfvdid=BQFmAAEBEI4pftXTi5Y7-zPEmnp5GLdAVCVBHvDZFmKI-G_jSj7o5WIreTmM5_25cZg9kfa3EJWXFWv5MXO_2TyiYqp0TC6ZLR36tprlmGTaw0Cw51hPpQ%3D%3D; Domain=.netflix.com; Path=/; Max-Age=31536000
set-cookie: SecureNetflixId=v%3D2%26mac%3DAQEAEQABABQqzzcGlsueuC_vqv9UWsdE6roESnDqzr4.%26dt%3D1697434421120; Domain=.netflix.com; Expires=Tue, 15 Oct 2024 05:33:41 GMT; Path=/; HttpOnly; Secure; SameSite=Strict
set-cookie: NetflixId=v%3D2%26ct%3DBQAOAAEBEAPrD3_T5fH9gBdSGfLIPFeBAEa2d5_sMUeQZ1Vf1vlIJhdgocmD3m2C5B81-TfiyxqvravvB3XOZ6xnXweClbkQtm-GgK7Qn75JpSIj7HEqq48M68f7sDRG7q8Kt_anWAAES8CZIx97O-EUCFbZitqmCsAUu-0oRjsuZFIFYVvhQz1bABLA7Rffa5Mws_21zN7E9Mg4YffLy5grIy66NYu52q6r8cilgs9Nt9ox_32h8EFSVtpO_IlHJazcZwLPI5DgWSUOxy5sy7N7mRtgqBbtYwBw6GPsnVK6n5LkGopcc7FPWkoAb0cgQBVDcYDZstDgWU8g0b4ROZsrRL8uqi83VL0y65EvMv33aHCOBWtpjHU.%26bt%3Ddev%26mac%3DAQEAEAABABR08rC-yMGUPWe9SUiNATSoZv4Ktq8yakY.; Domain=.netflix.com; Expires=Tue, 15 Oct 2024 05:33:41 GMT; Path=/; HttpOnly; Secure; SameSite=Lax
x-netflix.nfstatus: 1_1
x-netflix.proxy.execution-time: 15

