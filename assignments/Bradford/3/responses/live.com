> HTTP/1.1 440 
> Content-Length: 154
> Content-Type: text/html; charset=utf-8
> Server: Microsoft-IIS/10.0
> request-id: c5aac523-d974-661d-d467-cffdb074afb4
> Strict-Transport-Security: max-age=31536000; includeSubDomains; preload
> Alt-Svc: h3=":443",h3-29=":443"
> X-CalculatedFETarget: SN6PR16CU002.internal.outlook.com
> X-BackEndHttpStatus: 440
> X-BackEndHttpStatus: 440
> Set-Cookie: RoutingKeyCookie=; expires=Wed, 06-Oct-1993 14:11:25 GMT; path=/; secure
> Set-Cookie: HostSwitchPrg=; expires=Wed, 06-Oct-1993 14:11:25 GMT; path=/; secure
> Set-Cookie: OptInPrg=; expires=Wed, 06-Oct-1993 14:11:25 GMT; path=/; secure
> X-CalculatedBETarget: SN4PR17MB5799.namprd17.prod.outlook.com
> X-OWA-DiagnosticsInfo: 6;0;0
> X-IIDs: 0
> X-BackEnd-Begin: 2023-10-06T14:11:25.807
> X-BackEnd-End: 2023-10-06T14:11:25.822
> X-DiagInfo: SN4PR17MB5799
> X-BEServer: SN4PR17MB5799
> X-UA-Compatible: IE=EmulateIE7
> X-RUM-Validated: 1
> X-RUM-NotUpdateQueriedPath: 1
> X-RUM-NotUpdateQueriedDbCopy: 1
> X-Proxy-RoutingCorrectness: 1
> X-Proxy-BackendServerStatus: 440
> X-FEProxyInfo: PH7PR17CA0070.NAMPRD17.PROD.OUTLOOK.COM
> X-FEEFZInfo: PHX
> X-FEServer: SN6PR16CA0066
> X-FEServer: PH7PR17CA0070
> Report-To: {"group":"NelOfficeUpload1","max_age":7200,"endpoints":[{"url":"https://exo.nel.measure.office.net/api/report?TenantId=&FrontEnd=Cafe&DestinationEndpoint=PHX"}],"include_subdomains":true}
> NEL: {"report_to":"NelOfficeUpload1","max_age":7200,"include_subdomains":true,"failure_fraction":1.0,"success_fraction":0.01}
> X-FirstHopCafeEFZ: PHX
> Date: Fri, 06 Oct 2023 14:11:25 GMT
> 
