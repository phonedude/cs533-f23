HTTP/1.1 301 Moved Permanently
Date: Mon, 16 Oct 2023 05:33:08 GMT
Content-Length: 0
Connection: keep-alive
Location: https://www.dropcatch.com/
CF-Cache-Status: DYNAMIC
Content-Security-Policy: frame-ancestors 'self'; frame-src 'self' https://www.sitecdn.com braintreegateway.com assets.braintreegateway.com googletagmanager.com https://client.dropcatch.com https://*.paypal.com https://*.paypalobjects.com https://ssl.kaptcha.com; script-src 'self' https://*.paypal.com https://*.googletagmanager.com https://secure.dropcatch.com https://*.google-analytics.com 'unsafe-inline'; connect-src 'self' https://*.amazonaws.com https://*.braintreegateway.com https://*.braintree-api.com https://uilogging.tcdevops.com https://*.google-analytics.com https://translate.dropcatch.com https://client.dropcatch.com wss://rt.dropcatch.com
X-FRAME-OPTIONS: SAMEORIGIN
Server: cloudflare
CF-RAY: 816decdd59764fd9-ORF

HTTP/2 200 
date: Mon, 16 Oct 2023 05:33:08 GMT
content-type: text/html
last-modified: Fri, 27 Jan 2023 17:05:21 GMT
expires: Thu, 01 Jan 1970 00:00:01 GMT
cache-control: no-cache
lb: TclPrdLbDc1
backend: blue
cf-cache-status: DYNAMIC
content-security-policy: frame-ancestors 'self'; frame-src 'self' https://www.sitecdn.com braintreegateway.com assets.braintreegateway.com googletagmanager.com https://client.dropcatch.com https://*.paypal.com https://*.paypalobjects.com https://ssl.kaptcha.com; script-src 'self' https://*.paypal.com https://*.googletagmanager.com https://secure.dropcatch.com https://*.google-analytics.com 'unsafe-inline'; connect-src 'self' https://*.amazonaws.com https://*.braintreegateway.com https://*.braintree-api.com https://uilogging.tcdevops.com https://*.google-analytics.com https://translate.dropcatch.com https://client.dropcatch.com wss://rt.dropcatch.com
x-frame-options: SAMEORIGIN
server: cloudflare
cf-ray: 816decdf89ae4fd9-ORF

