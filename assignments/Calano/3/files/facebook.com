HTTP/1.1 301 Moved Permanently
Location: https://facebook.com/
Content-Type: text/plain
Server: proxygen-bolt
Date: Mon, 16 Oct 2023 05:33:12 GMT
Connection: keep-alive
Content-Length: 0

HTTP/2 301 
location: https://www.facebook.com/
strict-transport-security: max-age=15552000; preload
content-type: text/html; charset="utf-8"
x-fb-debug: lZfm7L418J0jcOmII5te452ErPv5DrTkd1GeqCV1F66Oy6O2Uam9RGadMzAKeWVH28qgAwuUcREn15BMj8WyNg==
content-length: 0
date: Mon, 16 Oct 2023 05:33:12 GMT
alt-svc: h3=":443"; ma=86400

HTTP/2 200 
vary: Accept-Encoding
set-cookie: fr=0Fr0WWnGbiRVCZB9P..BlLMsY.Xu.AAA.0.0.BlLMsY.AWVdWMERTVY; expires=Sun, 14-Jan-2024 05:33:12 GMT; Max-Age=7776000; path=/; domain=.facebook.com; secure; httponly
set-cookie: sb=GMssZdBtALxo6Me1iSlGDWDU; expires=Tue, 19-Nov-2024 05:33:12 GMT; Max-Age=34560000; path=/; domain=.facebook.com; secure; httponly
report-to: {"max_age":259200,"endpoints":[{"url":"https:\/\/www.facebook.com\/ajax\/browser_error_reports\/?device_level=unknown"}]}
content-security-policy: default-src data: blob: 'self' https://*.fbsbx.com 'unsafe-inline' *.facebook.com *.fbcdn.net 'unsafe-eval';script-src *.facebook.com *.fbcdn.net *.facebook.net *.google-analytics.com *.google.com 127.0.0.1:* 'unsafe-inline' blob: data: 'self' connect.facebook.net 'unsafe-eval';style-src fonts.googleapis.com *.fbcdn.net data: *.facebook.com 'unsafe-inline';connect-src *.facebook.com facebook.com *.fbcdn.net *.facebook.net wss://*.facebook.com:* wss://*.whatsapp.com:* wss://*.fbcdn.net attachment.fbsbx.com ws://localhost:* blob: *.cdninstagram.com 'self' http://localhost:3103 wss://gateway.facebook.com wss://edge-chat.facebook.com wss://snaptu-d.facebook.com wss://kaios-d.facebook.com/ v.whatsapp.net *.fbsbx.com *.fb.com;font-src data: *.gstatic.com *.facebook.com *.fbcdn.net *.fbsbx.com;img-src *.fbcdn.net *.facebook.com data: https://*.fbsbx.com *.tenor.co media.tenor.com facebook.com *.cdninstagram.com fbsbx.com fbcdn.net *.giphy.com connect.facebook.net *.carriersignal.info blob: android-webview-video-poster: googleads.g.doubleclick.net www.googleadservices.com *.whatsapp.net *.fb.com *.oculuscdn.com;media-src *.cdninstagram.com blob: *.fbcdn.net *.fbsbx.com www.facebook.com *.facebook.com https://*.giphy.com data:;frame-src *.doubleclick.net *.google.com *.facebook.com www.googleadservices.com *.fbsbx.com fbsbx.com data: www.instagram.com *.fbcdn.net https://paywithmybank.com https://sandbox.paywithmybank.com;worker-src blob: *.facebook.com data:;block-all-mixed-content;upgrade-insecure-requests;
document-policy: force-load-at-top
permissions-policy: accelerometer=(), ambient-light-sensor=(), bluetooth=(), camera=(self), geolocation=(self), gyroscope=(), hid=(), idle-detection=(), magnetometer=(), microphone=(self), midi=(), payment=(), screen-wake-lock=(), serial=(), usb=()
cross-origin-resource-policy: cross-origin
cross-origin-opener-policy: unsafe-none
pragma: no-cache
cache-control: private, no-cache, no-store, must-revalidate
expires: Sat, 01 Jan 2000 00:00:00 GMT
x-content-type-options: nosniff
x-xss-protection: 0
x-frame-options: DENY
strict-transport-security: max-age=15552000; preload
content-type: text/html; charset="utf-8"
x-fb-debug: +TmGktVyXQZySg3ChtmZpqLOZsLWGjkV+axrrCaxsyGec/eUD38s+JjAgtigMvvwjoS+vn/D8GfFyqVgzR9IIg==
date: Mon, 16 Oct 2023 05:33:12 GMT
alt-svc: h3=":443"; ma=86400

