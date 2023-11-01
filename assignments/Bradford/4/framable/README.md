# Assignment 4 - Which public sites are frameable?  
In this part of the assignment, I was tasked with analyzing the so called "frameability" of the 100 public websites I was provided with in assignment 3. The frameability of a website in this context means its capability of being embedded within an HTML iframe element. These elements are associated with vulnerabilities such as cross-site scripting, and are generally considered to be bad for security. For all of the sites, I needed to find whether or not they were frameable. For all the sites that weren't frameable, I needed to note the reason my attempt to frame them was not successful.  
## Youtube video  
https://youtu.be/c-856HirumE 
## Generating HTML pages for each site to embed them as iframes  
My first task was to generate HTML pages with iframes that embedded each of my 100 given web sites. I did this through a simple Python script called [create_pages.py](scripts/create_pages.py) that read in my 100 urls and created simple HTML files that contained only an iframe pointing to their appropriate site. An example of one of the generated HTML files is shown below.  
```
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>framable</title>
</head>

<body>

    <iframe src="https://aljazeera.com" id="iframe" height="600" width="600"></iframe> 

</body>

</html
```  
All 100 HTML files can be found in the html directory. While the content is the same as the template above (just with different src attributes for the iframes appropriately), they are all written on one line, unlike above. This was done for ease of programming in the Python script. The representation and functionality of the page is identical without the new lines.  
## Hosting a node server that can render all 100 HTML pages
My next task was to write a node server that was capable of serving all of the HTML pages. I did not want to generate statically programmed express routes for each page, so I opted for a generic route that could render any page in my html directory given its correct path. I accomplished this with an express route that captured the path given in the request, and rendered the appropriate page for that path. The route is shown below.  
```
app.get('/html/:route', (req, res) => {
    createReadStream('html/' + req.params["route"]).pipe(res)
});
```  
The full server code can be found in [server.js](server.js)  
## Rendering all 100 pages to detect frameability  
My final task for this part of the assignment was to render all of the pages in order to to analyze the behavior of the 100 sites when rendered within an iframe. To accomplish this, I did some preliminary analysis of some of the sites to determine the reasons a site would not be embedded within an iframe. I utilized the Chrome developer console to see reasoning for why it would not render the sites. The reasons that I found prevalent are listed below.
- Violation of x-frame-options response header set to sameorigin or deny
- Violation of frame-ancestors Content Security Policy directive
- Status code of 403 Forbidden from HTTP response
  - Especially prevalent in sites from Google  
  
With these in mind, I wrote a Python script called [render_pages.py](scripts/render_pages.py) that utilized the selenium module in order to automate the rendering of the pages in Chrome. This script made the requests to my node server for each HTML page through Chrome and read the console errors related to the iframes. If there was a console error related to the iframe, then the site was considered to be unframeable. If not, then the site was considered to be frameable. It wrote all of the results and reasoning (the raw error from the Chrome console log) for unframeability to a markdown table called [iframe_table.md](iframe_table.md). It is also shown below.  The script also output the number of sites that were frameable. 33 of the sites were frameable.
| Site | Frameability | Reason for not being frameable |
|--------------|--------------|--------------------------------|
| 20minutos.es | Frameable | N/A |
| abc.es | Frameable | N/A |
| abcnews.go.com | Frameable | N/A |
| academia.edu | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.academia.edu/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| admin.ch | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.admin.ch/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| aljazeera.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.aljazeera.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| amazon.co.jp | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.amazon.co.jp/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| amazon.co.uk | Frameable | N/A |
| amazon.de | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.amazon.de/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| ap.org | Frameable | N/A |
| asahi.com | Not frameable | https://sync.crwdcntrl.net/map/c=14516/tp=OBRN/tpid=rx-kHvtSoKTn5j62EPWNmTYZ2qfuAR9VPZhXzkp9ppjRjopVJQaqRo9iPBXpowV1 - Failed to load resource: the server responded with a status of 403 () |
| bandcamp.com | Frameable | N/A |
| bp2.blogger.com | Frameable | N/A |
| bustle.com | Frameable | N/A |
| ca.gov | Not frameable | security - Refused to frame 'https://www.ca.gov/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors 'self' *.ca.gov".|
| calendar.google.com | Not frameable | https://calendar.google.com/calendar/u/0/r - Failed to load resource: the server responded with a status of 403 () |
| canada.ca | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.canada.ca/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| cbsnews.com | Frameable | N/A |
| change.org | Not frameable | security - Refused to frame 'https://www.change.org/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors 'self'".|
| channel4.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.channel4.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| code.google.com | Frameable | N/A |
| depositfiles.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://depositfiles.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| disqus.com | Frameable | N/A |
| doi.org | Frameable | N/A |
| drive.google.com | Not frameable | https://drive.google.com/ - Failed to load resource: the server responded with a status of 403 () |
| dw.com | Frameable | N/A |
| ea.com | Not frameable | security - Refused to frame 'https://www.ea.com/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors 'self'".|
| elmundo.es | Frameable | N/A |
| elpais.com | Frameable | N/A |
| elsevier.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.elsevier.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| fb.me | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://fb.me/' in a frame because it set 'X-Frame-Options' to 'deny'. |
| fr.wikipedia.org | Frameable | N/A |
| get.google.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.google.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| gofundme.com | Not frameable | security - [Report Only] Refused to frame 'https://www.gofundme.com/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors gofundme.com *.gofundme.com *.hopin.com".|
| goo.ne.jp | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.goo.ne.jp/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| google.de | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.google.de/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| google.fr | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.google.fr/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| google.nl | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.google.nl/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| google.ru | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.google.ru/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| guardian.co.uk | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.theguardian.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| harvard.edu | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.harvard.edu/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| home.pl | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://home.pl/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| hubspot.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.hubspot.com/' in a frame because it set 'X-Frame-Options' to 'deny'. |
| icann.org | Not frameable | security - Refused to frame 'https://www.icann.org/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors *.icann.org".|
| ikea.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.ikea.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| imageshack.us | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://imageshack.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| independent.co.uk | Not frameable | security - Refused to frame 'https://www.independent.co.uk/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors https:".|
| itmedia.co.jp | Frameable | N/A |
| kakao.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.kakaocorp.com/' in a frame because it set 'X-Frame-Options' to 'deny'. |
| line.me | Frameable | N/A |
| list-manage.com | Frameable | N/A |
| live.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.microsoft.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| mail.google.com | Frameable | N/A |
| microsoft.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.microsoft.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| mirror.co.uk | Not frameable | security - Refused to frame 'https://www.mirror.co.uk/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors 'self' https://*.cdn.ampproject.org/ https://bing-amp.com/ https://*.tm-aws.com/ https://*.tm-awx.com/".|
| narod.ru | Frameable | N/A |
| nba.com | Not frameable | https://capi.connatix.com/us/pixel?puid=LOD55RMN-1T-ME43&pId=11&gdpr=&gdpr_consent=&us_privacy=&us_privacy=1YNN - Failed to load resource: the server responded with a status of 403 () |
| netflix.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.netflix.com/' in a frame because it set 'X-Frame-Options' to 'deny'. |
| netvibes.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.netvibes.com/' in a frame because it set 'X-Frame-Options' to 'deny'. |
| news.yahoo.com | Not frameable | security - Refused to frame 'https://news.yahoo.com/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors 'self' https://*.builtbygirls.com https://*.rivals.com https://*.engadget.com https://*.intheknow.com https://*.autoblog.com https://*.techcrunch.com https://*.yahoo.com https://*.aol.com https://*.huffingtonpost.com https://*.oath.com https://*.search.yahoo.com https://*.pnr.ouryahoo.com https://pnr.ouryahoo.com https://*.search.aol.com https://*.search.huffpost.com https://*.onesearch.com https://*.verizonmedia.com https://*.publishing.oath.com https://*.autoblog.com".|
| nytimes.com | Frameable | N/A |
| office.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.office.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| opera.com | Not frameable | security - Refused to frame 'https://www.opera.com/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors 'self' https://*.opera.com".|
| ovhcloud.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://us.ovhcloud.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| picasaweb.google.com | Frameable | N/A |
| pixabay.com | Not frameable | security - Refused to frame 'https://pixabay.com/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors none".|
| plus.google.com | Not frameable | security - Refused to frame 'https://workspaceupdates.googleblog.com/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors 'self'".|
| reuters.com | Frameable | N/A |
| samsung.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.samsung.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| sendspace.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.sendspace.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| sfgate.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://pr-bh.ybp.yahoo.com/' in a frame because it set 'X-Frame-Options' to 'deny'. |
| shopify.com | Not frameable | https://us01.z.antigena.com/l/FZt5psomz79DGe~O1V5PkX7S8-NVJIdw0INR-k~Duu9c36GyIDyElf4y8fa2~-9InNSq4BCadyu-8tQSiIkaVleT~Yh8GI4ocNSeo4~API4DJEsYNIMg2sPMMXvjcckTUFy53ZYw3gzv35jSAchydRkSr2XFgqe-kzzlKTlv1VT7-TlAc0PcX7nFzbKlHypwbpU3AWUAJgUx%2067EE678D-A931-49CD-9FAB-51DB0288614D&rnd=RND - Failed to load resource: the server responded with a status of 403 () |
| shutterstock.com | Frameable | N/A |
| sky.com | Not frameable | security - Refused to frame 'https://www.sky.com/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors 'self'".|
| softonic.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://en.softonic.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| soratemplates.com | Frameable | N/A |
| soundcloud.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://soundcloud.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| terra.com.br | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.terra.com.br/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| thetimes.co.uk | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.thetimes.co.uk/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| theverge.com | Not frameable | security - Refused to frame 'https://www.theverge.com/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors 'self' https://voxmedia.stories.usechorus.com".|
| tools.google.com | Frameable | N/A |
| translate.google.com | Not frameable | https://translate.google.com/ - Failed to load resource: the server responded with a status of 403 () |
| tripadvisor.com | Frameable | N/A |
| umn.edu | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://twin-cities.umn.edu/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| unsplash.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://unsplash.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| usnews.com | Not frameable | security - Refused to frame 'https://www.usnews.com/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors 'self' https://*.usnews.com".|
| variety.com | Not frameable | security - Refused to frame 'https://variety.com/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors 'none'".|
| vkontakte.ru | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://vk.com/' in a frame because it set 'X-Frame-Options' to 'deny'. |
| vox.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.vox.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| washington.edu | Frameable | N/A |
| weibo.com | Frameable | N/A |
| wikimedia.org | Frameable | N/A |
| wiley.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.wiley.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| www.over-blog.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.over-blog.com/' in a frame because it set 'X-Frame-Options' to 'deny'. |
| www.weebly.com | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.weebly.com/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| www.wikipedia.org | Frameable | N/A |
| yale.edu | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.yale.edu/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| zdf.de | Not frameable | chrome-error://chromewebdata/ 0 Refused to display 'https://www.zdf.de/' in a frame because it set 'X-Frame-Options' to 'sameorigin'. |
| zendesk.com | Not frameable | security - Refused to frame 'https://www.zendesk.com/' because an ancestor violates the following Content Security Policy directive: "frame-ancestors 'self' app.optimizely.com *.zendesk.com *.zendesk.co.jp *.zendesk.co.uk *.zendesk.com.br *.zendesk.com.mx *.zendesk.de *.zendesk.es *.zendesk.fr *.zendesk.kr *.zendesk.nl *.zendesk.tw *.zendesk.hk".|
| ziddu.com | Frameable | N/A |
