HTTP/1.1 301 Moved Permanently
Date: Mon, 16 Oct 2023 05:34:11 GMT
Server: Apache
Location: https://www.webmd.com/
Content-Type: text/html; charset=iso-8859-1

HTTP/2 200 
date: Mon, 16 Oct 2023 05:34:11 GMT
content-type: text/html
cf-cache-status: HIT
access-control-allow-origin: *
age: 32
cache-control: no-cache, no-store, must-revalidate
set-cookie: lrt_wrk=lrt1_cached_k8_worker_1_40S_21S_2023-10-05_15:04:12_gdbp_false_gtedgefrom_MA1_E_false_UC_false_UD_false_mp_false_active_true_from_MA1_ovr__config_envName_.k8s.lb._envNameFound_true_actv_true_blk_N/A_1697434451993_hvid_false; domain=.webmd.com; path=/
cf-edge-cache-control: s-maxage=119, maxage=10, proxy-revalidate, stale-while-revalidate=30
cf-wrk: lrt1_cached_k8_worker_1_40S_21S_2023-10-05_15:04:12_gdbp_false_gtedgefrom_MA1_E_false_UC_false_UD_false_mp_false_active_true_from_MA1_ovr__config_envName_.k8s.lb._envNameFound_true_actv_true_blk_N/A_1697434451993
content-security-policy: upgrade-insecure-requests
set-cookie: gtinfo={"ct":"Williamsburg","c":"James City","cc":"51095","st":"VA","sc":"47","z":"23185","lat":"37.27","lon":"-76.71","dma":"544","cntr":"usa","cntrc":"840","tz":null,"ci":"24.253.146.112"}; domain=.webmd.com; path=/
set-cookie: VisitorId=0c74cd1f-2e0c-4068-c8c1-e2622cb17681; Expires=Sun, 16 Oct 2033 05:34:11 GMT; domain=.webmd.com; path=/
set-cookie: ab=default; domain=.webmd.com; path=/; expires=Thu, 01 Jan 1970 00:00:00 GMT
x-backend: default
x-backend-by: default
x-cache: HIT
x-cache-control-by: override
x-cache-duration: 0.083333333333333h
x-cache-expiry: Monday, 16-Oct-2023 05:37:40 GMT
x-cache-reason: routing
x-cache-time: Monday, 16-Oct-2023 05:32:40 GMT
x-datacenter: MA1
x-dbg-gt: gtinfo={"ct":"Slough","c":null,"cc":null,"st":"ENG","sc":null,"z":"SL1","lat":"51.53680","lon":"-0.67180","dma":null,"cntr":"GBR","cntrc":"826","tz":"Europe/London","ci":"167.99.207.105","debug":"Cloudflare"}
x-edge-cache-duration: 0.033333333333333h
x-edge-cache-expiry: Monday, 16-Oct-2023 05:34:40 GMT
x-gt-setter: usr
x-redis: redis_server_2
x-route: pg
x-route-akamai: N/A
x-runtime: new
x-true-client-ip: 24.253.146.112
report-to: {"endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report\/v3?s=gSlLEoGM9DQGRanAE0qzjBacoZN7NhG8%2B7%2FS6R3F%2FtCTvQXa%2B3nYJge8J1CfYSagCFpAH13vOes955%2Bk8uMBlWjD1xsGTOMNgA%2BvincRcg0Rba72Y2GAXDK1Js6DQM0%3D"}],"group":"cf-nel","max_age":604800}
nel: {"success_fraction":0.01,"report_to":"cf-nel","max_age":604800}
server: cloudflare
cf-ray: 816dee6cbd4b3af4-IAD

