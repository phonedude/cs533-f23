> HTTP/1.1 200 OK
> Cache-Control: no-store,no-cache
> Pragma: no-cache
> Content-Length: 0
> Content-Type: text/html; charset=utf-8
> Content-Encoding: gzip
> Vary: Accept-Encoding
> Set-Cookie: OH.SID=c90b791b-554a-450b-bf14-0439e2735d5d; path=/; secure; samesite=none; httponly
> Set-Cookie: OH.DCAffinity=OH-eus; expires=Fri, 06 Oct 2023 22:11:32 GMT; path=/; secure; samesite=none; httponly
> Set-Cookie: OH.FLID=e88aac9c-278a-4fdc-827c-6ba7bb37fca5; expires=Sun, 06 Oct 2024 14:11:32 GMT; path=/; secure; samesite=none; httponly
> Set-Cookie: CreateFreeAccountButton=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/
> Set-Cookie: p.UnauthUserCookie=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/
> Set-Cookie: OhpAuth=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/
> Set-Cookie: OhpToken=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/
> Set-Cookie: UserIndex=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/
> Set-Cookie: MUID=2BD9F0BDE5176725273DE31FE458660A; path=/; secure; expires=Wed, 30-Oct-2024 14:11:32 GMT; domain=office.com
> Request-Context: appId=
> Strict-Transport-Security: max-age=31536000; includeSubDomains
> Referrer-Policy: strict-origin-when-cross-origin
> X-Content-Type-Options: nosniff
> X-XSS-Protection: 1; mode=block
> X-Frame-Options: SAMEORIGIN
> X-UA-Compatible: IE=edge,chrome=1
> NEL: {"report_to":"NelOfficeHubUpload1","max_age":3600,"failure_fraction":1.0,"success_fraction":0.01}
> Report-To: {"group":"NelOfficeHubUpload1","max_age":3600,"endpoints":[{"url":"https://officehub.nel.measure.office.net/api/report?tenantId=unknown&destinationEndpoint=eus&frontEnd=AFD"}]}
> Report-To: { "group": "csp-endpoint", "max_age": 86400, "endpoints": [{ "url": "https://csp.microsoft.com/report/Harmony-App-PROD" }]}
> Content-Security-Policy: default-src 'self';base-uri 'self';script-src 'nonce-gsBG7EoCQh4isvoiEXbgFQ==' 'strict-dynamic' 'report-sample' https:;report-to csp-endpoint;upgrade-insecure-requests;style-src 'self' *.cdn.office.net *.microsoft.com res-dev.cdn.officeppe.net 'unsafe-inline' https://www.microsoft.com/;font-src 'self' data: *.cdn.office.net res-dev.cdn.officeppe.net data c.s-microsoft.com *.microsoft.com;connect-src 'self' https://browser.pipe.aria.microsoft.com https://browser.events.data.microsoft.com *.office.com *.cdn.office.net res-dev.cdn.officeppe.net https://consentreceiverfd-prod.azurefd.net data:;frame-src https://login.microsoftonline.com https://login.live.com mem.gfx.ms amcdn.msftauth.net amcdn.msauth.net;img-src * data: blob:;worker-src 'self' blob:;child-src 'self' blob:;report-uri https://csp.microsoft.com/report/Harmony-App-PROD;
> X-Cache: CONFIG_NOCACHE
> X-MSEdge-Ref: Ref A: 3EAEEF58C49F40C8AE004DCA7E33576E Ref B: BLUEDGE2010 Ref C: 2023-10-06T14:11:32Z
> Date: Fri, 06 Oct 2023 14:11:32 GMT
> 
