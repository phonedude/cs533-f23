> HTTP/1.1 200 OK
> Connection: keep-alive
> Content-Length: 86724
> Server: Cowboy
> Report-To: {"group":"heroku-nel","max_age":3600,"endpoints":[{"url":"https://nel.heroku.com/reports?ts=1696601210&sid=af571f24-03ee-46d1-9f90-ab9030c2c74c&s=U9EKipiBeJxrQ6MAgyQ2zN7u3wM4MmRwXhH8BZF03eA%3D"}]}
> Reporting-Endpoints: heroku-nel=https://nel.heroku.com/reports?ts=1696601210&sid=af571f24-03ee-46d1-9f90-ab9030c2c74c&s=U9EKipiBeJxrQ6MAgyQ2zN7u3wM4MmRwXhH8BZF03eA%3D
> Nel: {"report_to":"heroku-nel","max_age":3600,"success_fraction":0.005,"failure_fraction":0.05,"response_headers":["Via"]}
> X-Frame-Options: SAMEORIGIN
> Strict-Transport-Security: max-age=31536000
> X-Content-Type-Options: nosniff
> X-Xss-Protection: 1
> Referrer-Policy: origin-when-cross-origin
> Link: <https://images.unsplash.com>; rel="preconnect", <https://plus.unsplash.com>; rel="preconnect"
> Content-Type: text/html; charset=utf-8
> Content-Encoding: gzip
> Via: 1.1 vegur, 1.1 varnish
> Accept-Ranges: bytes
> Date: Fri, 06 Oct 2023 14:12:01 GMT
> Age: 311
> X-Served-By: cache-iad-kiad7000138-IAD
> X-Cache: HIT
> X-Cache-Hits: 1
> Vary: x-locale, x-xp-plus-freq, x-xp-homepage-modules, x-logged-in, Accept-Encoding, client-geo-region
> Set-Cookie: require_cookie_consent=false; Expires=Sat, 05 Oct 2024 14:12:01 GMT; path=/;
> Set-Cookie: xp-plus-freq=one_in_four; expires=Sat, 05 Oct 2024 14:12:01 GMT; path=/;
> 
