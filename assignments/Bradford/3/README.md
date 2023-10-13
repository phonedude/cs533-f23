# CS 533 Assignment 3, Fall 2023
Caleb Bradford    
Due: October 18, 2023  

In this assignment, I was given 100 of Mozilla's top 500 most popular web sites on the Web. I was tasked with making HTTP HEAD requests to each of these domains and documenting their status codes as well as their cookie practices. My process included making the requests and storing the responses, filtering out the status code and cookie information, and finally writing the results to markdown tables for analysis. I scripted this work in several Python scripts, all stored in the src directory. My detailed process and my results are documented below.  
## Making the HTTP HEAD requests  
My first task was to automate the process of making HTTP HEAD requests to all of my assigned domains and storing the raw HTTP responses from the servers. To accomplish this, I utilized a Python script [(extract_cookies.py)](src/extract_cookies.py). I used the requests library to make the requests, and the requests_toolbelt library to get the raw HTTP responses. In making these requests, I took the following precautions: 
- Setting the allow_redirects argument to True so the requests would follow all 300 statuses
- Setting the verify argument to False so the requests would accept invalid SSL certificates
- Setting the timeout argument to 10. This made it so that if a server took longer than 10 seconds to respond, it would raise an exception. I considered these domains to be unresponsive at the time of the request, and documented that appropriately  

All of the raw HTTP responses were stored in the responses directory. For example, the response from the site abcnews.go.com was stored in [responses/abcnews.go.com](responses/abcnews.go.com), shown below:
```
> HTTP/1.1 200 OK
> Content-Type: text/html; charset=utf-8
> Content-Length: 56943
> Connection: keep-alive
> Date: Fri, 06 Oct 2023 14:10:35 GMT
> Server: nginx/1.20.1
> Expires: Fri, 06 Oct 2023 14:10:41 GMT
> Last-Modified: Fri, 06 Oct 2023 14:10:41 GMT
> Content-Encoding: gzip
> Via: 1.1 varnish (Varnish/6.0), 1.1 3a60765023a93f6346539d2ca40f0b12.cloudfront.net (CloudFront)
> Cache-Control: max-age=7
> Accept-Ranges: bytes
> Set-Cookie: region=ccpa; path=/; Expires=Fri, 13 Oct 2023 14:10:35 GMT;
> Set-Cookie: _dcf=1; path=/; Expires=Fri, 13 Oct 2023 14:10:35 GMT;
> Vary: Accept-Encoding
> X-Cache: Hit from cloudfront
> X-Amz-Cf-Pop: IAD61-P2
> X-Amz-Cf-Id: LG-i7l2_3B-s9ipqCf4VyPtJGt7aK_1KLmuVCNMs43rUcjv-89NOHw==
> Age: 3
> 
```  
For all responses that timed out, such as [icann.org](responses/icann.org), the file will have the output below:  
```
Request timed out
```  

## Filtering status code and cookie information from raw responses  
From the raw HTTP responses, I needed to extract only the lines of the responses containing the status code and any Set-Cookie headers. To do this, I wrote a Python script called [extract_cookies.py](src/extract_cookies.py). All it basically did was find the appropriate lines and wrote only those ones to new files, stored in the filtered_responses directory. For example, the filtered version of the response from abcnews.go.com was stored in [filtered_responses/abcnews.go.com](filtered_responses/abcnews.go.com), shown below:
```
> HTTP/1.1 200 OK
> Set-Cookie: region=ccpa; path=/; Expires=Fri, 13 Oct 2023 14:10:35 GMT;
> Set-Cookie: _dcf=1; path=/; Expires=Fri, 13 Oct 2023 14:10:35 GMT;
```  

## Tabulating data about each site  
For each of the 100 sites, I needed to document their HTTP response code, and the number of cookies they set in table format. I also needed to gather the maximum, minimum, mean, and median of the number of cookies set by the 100 sites. To accomplish this, I wrote a Python script called [write_sites.py](src/write_sites.py). It combined the tasks of reading each filtered response for the status and the number of cookies they set and writing that information to a valid markdown table. It also printed out the required statistics to the console. The statistics output for my data is shown below:  
```
There were 141 cookies set in the 97 web sites that could be reached
The average number of cookies is 1.4536082474226804
The median number of cookies is 1
The minimum number of cookies was 0
The maximum number of cookies was 10
```
The tabular data that the script also produced is shown below, and is also stored in [tables_generated/siteinfo.md](tables_generated/siteinfo.md).  
| Site | Status code | Number of cookies |
|----------------|----------------|----------------|
| calendar.google.com | 200 OK | 1 |
| softonic.com | 200 OK | 0 |
| sfgate.com | 403 Forbidden | 1 |
| plus.google.com | 200 OK | 0 |
| kakao.com | 200 OK | 0 |
| wikimedia.org | 200 OK | 1 |
| abcnews.go.com | 200 OK | 2 |
| disqus.com | 200 OK | 0 |
| netflix.com | 405 Method Not Allowed | 3 |
| harvard.edu | 200 OK | 0 |
| reuters.com | 200 OK | 1 |
| cbsnews.com | 200 OK | 3 |
| elmundo.es | 200 OK | 0 |
| www.over-blog.com | 200 OK | 0 |
| mirror.co.uk | 200 OK | 3 |
| opera.com | 403 Forbidden | 0 |
| academia.edu | 200 OK | 6 |
| soratemplates.com | 200 OK | 0 |
| icann.org | Timed out | 0 |
| wiley.com | 403 Forbidden | 1 |
| guardian.co.uk | 200 OK | 2 |
| ca.gov | 200 OK | 0 |
| unsplash.com | 200 OK | 2 |
| ovhcloud.com | 200 OK | 1 |
| narod.ru | 200 OK | 0 |
| translate.google.com | 200 OK | 1 |
| bandcamp.com | 200 OK | 5 |
| microsoft.com | 200 OK | 0 |
| zendesk.com | 403 Forbidden | 1 |
| ikea.com | 200 OK | 2 |
| washington.edu | 200 OK | 1 |
| depositfiles.com | 200 OK | 1 |
| channel4.com | 200 OK | 2 |
| home.pl | 200 OK | 0 |
| sendspace.com | 200 OK | 2 |
| sky.com | 200 OK | 3 |
| fb.me | 200 OK | 2 |
| asahi.com | 200 OK | 0 |
| list-manage.com | 200 OK | 2 |
| terra.com.br | 200 OK | 0 |
| elsevier.com | 200 OK | 1 |
| yale.edu | 200 OK | 0 |
| www.wikipedia.org | 200 OK | 4 |
| pixabay.com | 403 Forbidden | 1 |
| admin.ch | 200 OK | 2 |
| doi.org | 200 OK | 0 |
| fr.wikipedia.org | 200 OK | 1 |
| dw.com | 200 OK | 0 |
| ziddu.com | 200 OK | 0 |
| change.org | 200 OK | 3 |
| bp2.blogger.com | 400 Bad Request | 0 |
| soundcloud.com | 200 OK | 0 |
| abc.es | 403 Forbidden | 0 |
| google.de | 200 OK | 3 |
| bustle.com | 200 OK | 0 |
| ap.org | 200 OK | 0 |
| itmedia.co.jp | 200 OK | 0 |
| line.me | 200 OK | 1 |
| theverge.com | 200 OK | 1 |
| amazon.de | 503 Service Unavailable | 0 |
| tripadvisor.com | Timed out | 0 |
| live.com | 440 | 3 |
| weibo.com | 200 OK | 0 |
| thetimes.co.uk | 200 OK | 4 |
| news.yahoo.com | 200 OK | 0 |
| canada.ca | 200 OK | 1 |
| ea.com | 200 OK | 3 |
| vox.com | 200 OK | 2 |
| netvibes.com | 200 OK | 0 |
| samsung.com | 403 Forbidden | 4 |
| picasaweb.google.com | 200 OK | 0 |
| usnews.com | Timed out | 0 |
| hubspot.com | 200 OK | 1 |
| umn.edu | 200 OK | 0 |
| office.com | 200 OK | 9 |
| nytimes.com | 200 OK | 5 |
| www.weebly.com | 200 OK | 7 |
| amazon.co.uk | 405 Method Not Allowed | 0 |
| get.google.com | 200 OK | 3 |
| aljazeera.com | 200 OK | 0 |
| google.fr | 200 OK | 3 |
| 20minutos.es | 200 OK | 0 |
| shutterstock.com | 406 Not Acceptable | 0 |
| nba.com | 200 OK | 2 |
| google.ru | 200 OK | 3 |
| goo.ne.jp | 200 OK | 9 |
| mail.google.com | 200 OK | 0 |
| variety.com | 200 OK | 0 |
| independent.co.uk | 200 OK | 10 |
| gofundme.com | 200 OK | 1 |
| tools.google.com | 200 OK | 0 |
| google.nl | 200 OK | 3 |
| code.google.com | 200 OK | 0 |
| zdf.de | 200 OK | 0 |
| drive.google.com | 200 OK | 0 |
| amazon.co.jp | 405 Method Not Allowed | 1 |
| elpais.com | 200 OK | 0 |
| vkontakte.ru | 418 | 0 |
| imageshack.us | 204 No Content | 0 |
| shopify.com | 200 OK | 1 |

## Tabulating data about each cookie  
For each of the cookies set by the 100 sites, I needed to tabulate certain attributes related to Web security. This included whether or not they set HttpOnly, Secure, and SameSite (as well as the corresponding SameSite policy where applicable). I also needed to extract the value of the path attribute, if given. Lastly, I needed to document exactly how many of these cookies set these various attributes. To accomplish this, I wrote a Python script called [write_cookie_attributes.py](src/write_cookie_attributes.py). In addition to generating the valid markdown table that documented the attributes set, the script also generated the required statistics about the attributes and prints them to the console. The output is shown below:  
```
Of the 141 cookies: 
38 cookies set HttpOnly
74 cookies set Secure
26 cookies set SameSite
Of the 26 cookies that set SameSite, 2 were Strict, 10 were Lax, and 14 were None
139 cookies set Path, and 0 had values other than "/"
```  
The tabular data that the script also produced is shown below and is also stored in [tables_generated/cookieinfo.md](tables_generated/cookieinfo.md).  
| Site | Path? | HttPOnly? | Secure? | SameSite? | SameSite Policy? |
|-----------|-----------|-----------|-----------|-----------|-----------| 
| calendar.google.com | / | True | False | False | N/A |
| sfgate.com | / | False | True | False | N/A |
| wikimedia.org | / | False | True | False | N/A |
| abcnews.go.com | / | False | False | False | N/A |
| abcnews.go.com | / | False | False | False | N/A |
| netflix.com | / | False | False | False | N/A |
| netflix.com | / | True | True | True | Strict |
| netflix.com | / | True | True | True | Lax |
| reuters.com | / | False | True | False | N/A |
| cbsnews.com | / | False | False | False | N/A |
| cbsnews.com | / | False | False | False | N/A |
| cbsnews.com | / | False | False | False | N/A |
| mirror.co.uk | / | False | False | False | N/A |
| mirror.co.uk | / | False | False | False | N/A |
| mirror.co.uk | / | False | False | False | N/A |
| academia.edu | None | False | True | False | N/A |
| academia.edu | / | False | True | False | N/A |
| academia.edu | / | False | True | False | N/A |
| academia.edu | / | False | True | False | N/A |
| academia.edu | / | False | True | False | N/A |
| academia.edu | / | True | True | True | None |
| wiley.com | / | False | False | False | N/A |
| guardian.co.uk | / | False | True | False | N/A |
| guardian.co.uk | / | False | True | False | N/A |
| unsplash.com | / | False | False | False | N/A |
| unsplash.com | / | False | False | False | N/A |
| ovhcloud.com | / | True | False | False | N/A |
| translate.google.com | / | True | False | False | N/A |
| bandcamp.com | / | True | True | True | None |
| bandcamp.com | / | False | False | False | N/A |
| bandcamp.com | / | False | False | False | N/A |
| bandcamp.com | / | False | False | False | N/A |
| bandcamp.com | / | False | True | False | N/A |
| zendesk.com | / | True | True | True | None |
| ikea.com | / | False | True | False | N/A |
| ikea.com | / | False | False | False | N/A |
| washington.edu | / | True | True | False | N/A |
| depositfiles.com | / | False | False | False | N/A |
| channel4.com | / | False | True | False | N/A |
| channel4.com | / | False | False | False | N/A |
| sendspace.com | / | False | False | False | N/A |
| sendspace.com | / | False | False | False | N/A |
| sky.com | / | False | True | False | N/A |
| sky.com | / | False | True | False | N/A |
| sky.com | / | False | False | False | N/A |
| fb.me | / | True | True | False | N/A |
| fb.me | / | True | True | False | N/A |
| list-manage.com | / | False | True | True | None |
| list-manage.com | / | False | True | True | None |
| elsevier.com | / | False | False | False | N/A |
| www.wikipedia.org | / | True | True | False | N/A |
| www.wikipedia.org | / | True | True | False | N/A |
| www.wikipedia.org | / | False | True | False | N/A |
| www.wikipedia.org | / | False | True | False | N/A |
| pixabay.com | / | True | True | True | None |
| admin.ch | / | True | True | False | N/A |
| admin.ch | / | True | False | False | N/A |
| fr.wikipedia.org | / | False | True | False | N/A |
| change.org | / | True | True | True | Lax |
| change.org | / | False | True | True | Strict |
| change.org | / | True | True | True | None |
| google.de | / | False | True | False | N/A |
| google.de | / | True | True | True | lax |
| google.de | / | True | False | False | N/A |
| line.me | / | False | False | False | N/A |
| theverge.com | / | False | True | True | Lax |
| live.com | / | False | True | False | N/A |
| live.com | / | False | True | False | N/A |
| live.com | / | False | True | False | N/A |
| thetimes.co.uk | / | False | False | False | N/A |
| thetimes.co.uk | None | False | False | False | N/A |
| thetimes.co.uk | / | False | True | False | N/A |
| thetimes.co.uk | / | False | False | False | N/A |
| canada.ca | / | False | True | False | N/A |
| ea.com | / | False | False | False | N/A |
| ea.com | / | False | False | False | N/A |
| ea.com | / | False | False | False | N/A |
| vox.com | / | False | False | False | N/A |
| vox.com | / | False | True | True | Lax |
| samsung.com | / | False | False | False | N/A |
| samsung.com | / | True | True | False | N/A |
| samsung.com | / | False | False | False | N/A |
| samsung.com | / | False | False | False | N/A |
| hubspot.com | / | True | True | True | None |
| office.com | / | True | True | True | none |
| office.com | / | True | True | True | none |
| office.com | / | True | True | True | none |
| office.com | / | False | False | False | N/A |
| office.com | / | False | False | False | N/A |
| office.com | / | False | False | False | N/A |
| office.com | / | False | False | False | N/A |
| office.com | / | False | False | False | N/A |
| office.com | / | False | True | False | N/A |
| nytimes.com | / | False | True | True | none |
| nytimes.com | / | False | False | False | N/A |
| nytimes.com | / | False | True | True | Lax |
| nytimes.com | / | False | False | False | N/A |
| nytimes.com | / | False | True | True | none |
| www.weebly.com | / | False | False | False | N/A |
| www.weebly.com | / | False | False | False | N/A |
| www.weebly.com | / | False | False | False | N/A |
| www.weebly.com | / | False | False | False | N/A |
| www.weebly.com | / | False | False | False | N/A |
| www.weebly.com | / | False | False | False | N/A |
| www.weebly.com | / | False | False | False | N/A |
| get.google.com | / | False | True | False | N/A |
| get.google.com | / | True | True | True | lax |
| get.google.com | / | True | False | False | N/A |
| google.fr | / | False | True | False | N/A |
| google.fr | / | True | True | True | lax |
| google.fr | / | True | False | False | N/A |
| nba.com | / | False | True | False | N/A |
| nba.com | / | False | False | False | N/A |
| google.ru | / | False | True | False | N/A |
| google.ru | / | True | True | True | lax |
| google.ru | / | True | False | False | N/A |
| goo.ne.jp | / | False | True | False | N/A |
| goo.ne.jp | / | False | True | False | N/A |
| goo.ne.jp | / | False | True | False | N/A |
| goo.ne.jp | / | True | True | False | N/A |
| goo.ne.jp | / | False | True | False | N/A |
| goo.ne.jp | / | True | True | False | N/A |
| goo.ne.jp | / | False | False | False | N/A |
| goo.ne.jp | / | False | False | False | N/A |
| goo.ne.jp | / | False | False | False | N/A |
| independent.co.uk | / | False | False | False | N/A |
| independent.co.uk | / | False | False | False | N/A |
| independent.co.uk | / | False | False | False | N/A |
| independent.co.uk | / | True | True | False | N/A |
| independent.co.uk | / | False | True | False | N/A |
| independent.co.uk | / | False | False | False | N/A |
| independent.co.uk | / | False | False | False | N/A |
| independent.co.uk | / | False | False | False | N/A |
| independent.co.uk | / | True | True | False | N/A |
| independent.co.uk | / | False | True | False | N/A |
| gofundme.com | / | False | False | False | N/A |
| google.nl | / | False | True | False | N/A |
| google.nl | / | True | True | True | lax |
| google.nl | / | True | False | False | N/A |
| amazon.co.jp | / | False | False | False | N/A |
| shopify.com | / | True | True | True | None |

## It's turtles all the way down...  
I have found that the exact origin of the phrase is uncertain, but is usually attributed to a story in which a scientist give a lecture about the position of the Earth in the universe. An audience member posits that the Earth is actually not situated in space, but rather rests on the back of a giant turtle. When pressed about what existed beyond the turtle, she said that that turtle rested on a slightly larger turtle. When pressed about that turtle, she said that it's actually turtles all the way down. This saying is usually used to describe infinite regress. 