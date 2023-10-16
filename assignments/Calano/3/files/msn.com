HTTP/1.1 301 Moved Permanently
Content-Length: 0
Location: https://msn.com/
X-MSEdge-Ref: Ref A: F67FCE4C331747EFA6690389D913751B Ref B: ASHEDGE1417 Ref C: 2023-10-16T05:33:39Z
Date: Mon, 16 Oct 2023 05:33:38 GMT

HTTP/2 301 
content-length: 0
location: https://www.msn.com/
strict-transport-security: max-age=63072000; includeSubDomains; preload
accept-ch: Sec-CH-UA-Arch, Sec-CH-UA-Bitness, Sec-CH-UA-Full-Version, Sec-CH-UA-Full-Version-List, Sec-CH-UA-Mobile, Sec-CH-UA-Model, Sec-CH-UA-Platform, Sec-CH-UA-Platform-Version
x-msedge-ref: Ref A: AC8EA55B7FE040FF8E0A71B11F6F8242 Ref B: ASHEDGE1521 Ref C: 2023-10-16T05:33:39Z
date: Mon, 16 Oct 2023 05:33:38 GMT

HTTP/2 404 
cache-control: no-store, no-cache
pragma: no-cache
content-length: 0
set-cookie: _C_ETH=1; domain=.msn.com; path=/; secure; httponly
set-cookie: MUID=1F5CE760FD96608D074CF4CCFCD961F7; expires=Sat, 09 Nov 2024 05:33:39 GMT; domain=.msn.com; path=/; secure; samesite=none
set-cookie: MUIDB=1F5CE760FD96608D074CF4CCFCD961F7; expires=Sat, 09 Nov 2024 05:33:39 GMT; path=/; httponly
set-cookie: _EDGE_S=F=1&SID=35F428C4D1BB611620D43B68D09B6038; domain=.msn.com; path=/; httponly
set-cookie: _EDGE_V=1; expires=Sat, 09 Nov 2024 05:33:39 GMT; domain=.msn.com; path=/; httponly
x-fabric-cluster: pmeprodeus
nel: {"report_to":"network-errors","max_age":604800,"success_fraction":0.001,"failure_fraction":0.5}
report-to: {"group":"network-errors","max_age":604800,"endpoints":[{"url":"https://deff.nelreports.net/api/report?cat=msn"}]},{"group":"csp-endpoint","max_age":86400,"endpoints":[{"url":"https://deff.nelreports.net/api/report"}]}
x-ceto-ref: A7DCF5A1873B430EB744AD318F0B6B7E|2023-10-16T05:33:39.581Z
x-cache: CONFIG_NOCACHE
accept-ch: Sec-CH-UA-Arch, Sec-CH-UA-Bitness, Sec-CH-UA-Full-Version, Sec-CH-UA-Full-Version-List, Sec-CH-UA-Mobile, Sec-CH-UA-Model, Sec-CH-UA-Platform, Sec-CH-UA-Platform-Version
x-msedge-ref: Ref A: A7DCF5A1873B430EB744AD318F0B6B7E Ref B: BLUEDGE1110 Ref C: 2023-10-16T05:33:39Z
date: Mon, 16 Oct 2023 05:33:39 GMT

