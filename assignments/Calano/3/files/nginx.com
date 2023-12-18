HTTP/1.1 301 Moved Permanently
location: https://www.nginx.com/
set-cookie: 6da15=1697434423681-251503014; Path=/; Domain=nginx.com; Expires=Tue, 16 Jan 2024 05:33:43 GMT
set-cookie: 6da103=Rd3lr+gFB0Y+rVrBRbUZrdKtFghOg/aW5o0rFn6PaTt4VI+MICIRuuwrI9LOapUhvG6h98at+Od4LL/bqFGiebDoU3twJRAbw1trdS9w/1VdYThuKmxkRd918NhQLZWgvoii2bO3xhopYzOFkjLbt5Lhs+Pz62JMBnMPMZgOMQ4AoYqu; path=/
x-volterra-location: dc12-ash
date: Mon, 16 Oct 2023 05:33:43 GMT
server: volt-adc
transfer-encoding: chunked

HTTP/2 200 
date: Mon, 16 Oct 2023 05:33:44 GMT
content-type: text/html; charset=UTF-8
vary: Accept-Encoding
x-gateway-request-id: 63954051bae5eab36f3b77a1093c7008
set-cookie: geoip=US; Max-Age=604800
cache-control: public, max-age=600
link: <https://www.nginx.com/wp-json/>; rel="https://api.w.org/"
link: <https://www.nginx.com/wp-json/wp/v2/pages/2>; rel="alternate"; type="application/json"
link: <https://www.nginx.com/>; rel=shortlink
content-security-policy: frame-ancestors 'self'
x-gateway-cache-key: 1697230321.357|standard|https|www.nginx.com|||/|US
x-gateway-cache-status: HIT
x-gateway-skip-cache: 0
x-envoy-upstream-service-time: 5
set-cookie: main-nginx="be57b65b7cb723e7"; HttpOnly
strict-transport-security: max-age=31536000
set-cookie: 56465=1697434423990-757505793; Path=/; Domain=nginx.com; Expires=Tue, 16 Jan 2024 05:33:43 GMT
set-cookie: 564603=RoIMvxfM9E3nMd+neuowChYZ7LvOKibzKFEPi1zDmt+WIqWW8UxvSsdv1dbtCRIO5Us9PXWR7mGDYQ+AJyKxLr0hBQmk3xitH9kA3NlLO0cpibal9mA2P7nQOUhhGlnulQcUkDShTfGDPrr1LPOEoFuNqgqoTmPkvb3WoOP4i2R5oSbz; path=/
set-cookie: TS01dc4fc6=01800d6b932929d90ff7b53d6f2005cf650360a6cd89cdfbd12f032d79fb5d89ba5eb949932ae2aa6ebcba8c947508585ddd10659f; Path=/; Secure; HttpOnly; SameSite=Strict; 
server: nginx

