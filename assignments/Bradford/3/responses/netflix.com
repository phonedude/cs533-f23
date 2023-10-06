> HTTP/1.1 405 Method Not Allowed
> Server: nq_website_nonmember-prod-release 4a9e18ed-07bc-4c24-a385-63c60c436c18
> x-frame-options: DENY
> allow: GET, OPTIONS, POST
> date: Fri, 06 Oct 2023 14:11:30 GMT
> x-envoy-upstream-service-time: 2
> x-b3-traceid: 462665dc2350fc11
> x-request-id: da98c565-0e9e-4a7b-b80a-859e7c963ce4
> x-envoy-decorator-operation: lo_svc
> x-http2-stream-id: 7
> Via: 1.1 i-0ea8add360fa1cbf7 (us-east-1)
> X-Xss-Protection: 1; mode=block; report=https://www.netflix.com/ichnaea/log/freeform/xssreport
> X-Content-Type-Options: nosniff
> Strict-Transport-Security: max-age=31536000; includeSubDomains
> X-Originating-URL: http://netflix.com/
> Edge-Control: no-cache, no-store
> Cache-Control: no-cache, no-store
> Set-Cookie: nfvdid=BQFmAAEBEGcgKZWCczTfv-24SLnayb9ApGzadSLzeODnf9j1BjiWLSOeSWo-KTV6HrEW8M-53jYqHyNyQuEpK1OpSPJ5Zl6TtrpD1Y7HS6Umxk1D2miXyQ%3D%3D; Domain=.netflix.com; Path=/; Max-Age=31536000
> Set-Cookie: SecureNetflixId=v%3D2%26mac%3DAQEAEQABABQEQiG-O8ifLiB1VUeYEvsfgXXidRTAWmw.%26dt%3D1696601490386; Domain=.netflix.com; Expires=Sat, 5 Oct 2024 14:11:30 GMT; Path=/; HttpOnly; Secure; SameSite=Strict
> Set-Cookie: NetflixId=v%3D2%26ct%3DBQAOAAEBEA3Yj_r_6166lJBSEeKG-BCBAIoD9ice-Koqu_PeaJeQ5ZsSGLGBcAs-sqz2JO2PLQRnAW2RSLFtUwauYB1HX0rVCflM46wNjvB6P_v2twU4kFfiie2bPwikXsklltK8VkD3umdXhybcEnv75Tuz7iVzmiLyNL7grjqYZ7NxcdugJgBtjndJ7mtIYqd0WXPPjpnTtblue3RkxWC4olu_ET9vQR6neUh5GAnl__oJ7pY_4cgKSld0z6qnUA7GLvDe6pOXDCpG7AfOdVCcLLO-aRFioNt3xKkiYgw37M0TQw8R7DrK4hngO03m3oisTQKffDbSovQumAAM1bhAKe0JgA4hJ64Zq_sKiRWPA3XpBTgY6fY.%26bt%3Ddev%26mac%3DAQEAEAABABSpDFwXB5XcVG_uW5W6o7bzGlLXE3OhGFs.; Domain=.netflix.com; Expires=Sat, 5 Oct 2024 14:11:30 GMT; Path=/; HttpOnly; Secure; SameSite=Lax
> X-Netflix.nfstatus: 1_1
> X-Netflix.proxy.execution-time: 45
> transfer-encoding: chunked
> 
