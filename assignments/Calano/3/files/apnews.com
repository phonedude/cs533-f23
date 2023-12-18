HTTP/1.1 301 Moved Permanently
Cache-Control: private
Location: https://apnews.com:443/
Content-Length: 0
Date: Mon, 16 Oct 2023 05:32:55 GMT
Content-Type: text/html; charset=UTF-8

HTTP/2 200 
date: Mon, 16 Oct 2023 05:32:57 GMT
server: istio-envoy
strict-transport-security: max-age=31536000; includeSubDomains
cache-control: max-age=30,s-maxage=30,stale-while-revalidate=30
x-powered-by: Brightspot
content-type: text/html;charset=UTF-8
vary: Accept-Encoding
x-envoy-upstream-service-time: 2700
x-envoy-decorator-operation: brightspot-frontend-verify.prod-news.svc.cluster.local:80/*
via: 1.1 google
alt-svc: h3=":443"; ma=2592000,h3-29=":443"; ma=2592000

