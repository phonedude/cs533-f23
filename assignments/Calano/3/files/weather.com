HTTP/1.1 301 Moved Permanently
Server: AkamaiGHost
Content-Length: 0
Location: https://weather.com/
Expires: Mon, 16 Oct 2023 05:34:11 GMT
Cache-Control: max-age=0, no-cache
Pragma: no-cache
Date: Mon, 16 Oct 2023 05:34:11 GMT
Connection: keep-alive
Set-Cookie: speedpin=4G; expires=Mon, 16-Oct-2023 06:04:11 GMT; path=/; domain=.weather.com; secure
Set-Cookie: ci=TWC-Connection-Speed=4G&TWC-Locale-Group=US&TWC-Device-Class=desktop&X-Origin-Hint=PROD-IBM-Daybreak-home&TWC-Network-Type=wifi&TWC-GeoIP-Country=US&TWC-GeoIP-Lat=36.8511&TWC-GeoIP-Long=-76.2784&Akamai-Connection-Speed=1000+&TWC-Privacy=usa-va&TWC-GeoIP-DMA=544&TWC-GeoIP-City=NORFOLK&TWC-GeoIP-Region=VA; path=/; domain=.weather.com; secure
Access-Control-Max-Age: 86400
Access-Control-Allow-Credentials: false
Access-Control-Allow-Headers: *
Access-Control-Allow-Methods: GET,POST,OPTIONS
Access-Control-Allow-Origin: *
Property-id: TWC-WX-Prod
TWC-PATH-LOCALE: /
TWC-Subs: none
TWC-Unit: u
TWC-Privacy: usa-va
TWC-GeoIP-Region: VA
TWC-GeoIP-City: NORFOLK
TWC-GeoIP-DMA: 544
TWC-GeoIP-LatLong: 36.8511,-76.2784
TWC-GeoIP-Country: US
TWC-Device-Class: desktop
TWC-Locale-Group: US
TWC-Connection-Speed: 4G
TWC-Variation: eyJzZGsiOnsidmFsdWUiOiJiIn19
Strict-Transport-Security: max-age=15552000; preload
TWC-AK-Req-ID: 4a6e1366
X-Origin-Hint: PROD-IBM-Daybreak-home
Server-Timing: ak_p; desc="1697434451498_1751178244_1248727910_11_6278_21_0_-";dur=1

HTTP/2 200 
content-type: text/html; charset=utf-8
server-timing: intid;desc=0e7ad549732ae1ea
x-dns-prefetch-control: off
x-frame-options: SAMEORIGIN
x-download-options: noopen
x-content-type-options: nosniff
x-xss-protection: 1; mode=block
webcakes-app-name: daybreak-home
webcakes-app-version: 1.0.0-6df3da3bfc
webcakes-region: dal10
etag: W/"f4446-Lo1yP6tJasSAOwOOBlBXRWZJPLU"
expires: Mon, 16 Oct 2023 05:34:11 GMT
cache-control: max-age=0, no-cache
pragma: no-cache
date: Mon, 16 Oct 2023 05:34:11 GMT
set-cookie: speedpin=4G; expires=Mon, 16-Oct-2023 06:04:11 GMT; path=/; domain=.weather.com; secure
set-cookie: ci=TWC-Connection-Speed=4G&TWC-Locale-Group=US&TWC-Device-Class=desktop&X-Origin-Hint=PROD-IBM-Daybreak-home&TWC-Network-Type=wifi&TWC-GeoIP-Country=US&TWC-GeoIP-Lat=36.8511&TWC-GeoIP-Long=-76.2784&Akamai-Connection-Speed=1000+&TWC-Privacy=usa-va&TWC-GeoIP-DMA=544&TWC-GeoIP-City=NORFOLK&TWC-GeoIP-Region=VA; path=/; domain=.weather.com; secure
access-control-max-age: 86400
access-control-allow-credentials: false
access-control-allow-headers: *
access-control-allow-methods: GET,POST,OPTIONS
access-control-allow-origin: *
property-id: TWC-WX-Prod
twc-path-locale: /
twc-subs: none
twc-unit: u
twc-privacy: usa-va
twc-geoip-region: VA
twc-geoip-city: NORFOLK
twc-geoip-dma: 544
twc-geoip-latlong: 36.8511,-76.2784
twc-geoip-country: US
twc-device-class: desktop
twc-locale-group: US
twc-connection-speed: 4G
twc-variation: eyJzZGsiOnsidmFsdWUiOiJiIn19
strict-transport-security: max-age=15552000; preload
twc-ak-req-id: 328f1660
x-origin-hint: PROD-IBM-Daybreak-home
server-timing: ak_p; desc="1697434451594_1751178245_848238176_29_7006_36_42_15";dur=1

