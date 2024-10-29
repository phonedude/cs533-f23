### ODU CS 433/533 Web Security, Fall 2023
Instructor: [Michael L. Nelson](http://www.cs.odu.edu/~mln/) <mln@cs.odu.edu>

Office Hours: Wednesdays 2-4 and by appointment

Time: Wednesdays 4:20pm - 7:00pm

Place: online to start the semester -- contact mln@cs.odu.edu for the Zoom URL.  

[Syllabus](https://raw.githubusercontent.com/phonedude/cs533-f23/master/syllabus.txt)

Class Email list: [https://groups.google.com/group/cs533-f23](https://groups.google.com/group/cs533-f23)

CRNs: 23043, 23044, 23045 (433) and 23046, 23047, 23048 (533)

### Course Objectives

The goal of this course is to review common web security vulnerabilities
and exploits, as well as their corresponding defenses.  There is
an inherent tension between "web as simple document reader" and
"web as application environment", and as the functionality of the
web ecosystem increases, so do the vulnerabilities.

General concepts that students will learn: principles of web security,
attacks and countermeasures, the browser security model, web app
vulnerabilities, injection, denial-of-service, TLS attacks, privacy,
fingerprinting, same-origin policy, cross site scripting, authentication,
JavaScript security, emerging threats, defense-in-depth, techniques
for writing secure code, web archiving, rehosting.

Specific technologies that students will learn: Git/GitHub,
DOM/Javascript, CLI, Node.js, Twitter, Youtube.

### Course Inspiration

This course is based on [CS 253 Web Security, Stanford, Fall
2019](https://web.stanford.edu/class/cs253/).  Special thanks to
[Feross Aboukhadijeh](https://feross.org/) for generously sharing
his course materials (although any errors are mine).

### Class Schedule (subject to change; slides will be updated prior to class)

* Week 01 - August 30 - Introduction and Administrivia, Document Object Model, Javascript, HTTP, Security fundamentals
   * Git/GitHub [1](https://guides.github.com/introduction/git-handbook/), [2](https://www.youtube.com/watch?v=0fKg7e37bQE#t=4m20s), [3](https://www.cs.odu.edu/~tkennedy/cs411/s20/Public/gitIntro/index.html)
   * Markdown [1](https://guides.github.com/features/mastering-markdown/), [2](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf)
   * [Node.js](https://nodejs.org/)
   * Document Object Model: [Introduction to the DOM](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction), [Easy Way to Understand How the DOM Works](https://www.youtube.com/watch?v=2Tld4yyN_tw)
   * [JavaScript Crash Course, JavaScript DOM Crash Course Parts 1--4](https://www.youtube.com/playlist?list=PLillGF-RfqbbnEGy3ROiLWk7JMCuSyQtX)
   * [A Re-Introduction to JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript/A_re-introduction_to_JavaScript)
   * [The Missing Semester of Your CS Education](https://missing.csail.mit.edu/)
   * Inside look at modern web browser: [1](https://developers.google.com/web/updates/2018/09/inside-browser-part1), [2](https://developers.google.com/web/updates/2018/09/inside-browser-part2), [3](https://developers.google.com/web/updates/2018/09/inside-browser-part3)
   * [Architecture of the World Wide Web, Volume One](https://www.w3.org/TR/webarch/)
   * [Class slides](https://docs.google.com/presentation/d/1FaFNxFVoVhM7_iGNLu_SQPAVssxWv3Bsm8q7FyCPWjU/edit)

* Week 02 - September 6 - Cookies, Sessions
   * [An overview of HTTP](https://developer.mozilla.org/en-US/docs/Web/HTTP/Overview)
   * [HTTP Cookies](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies)
   * [HTTP Headers](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers)
   * [Class slides](https://docs.google.com/presentation/d/1ECq0Q9aFiIWBrPq79nUihsLaknYczZt_c5xFZHFC1Rs/edit)

* Week 03 - September 13 - Cross-Site Request Forgery, Same Origin Policy
   * [SameSite Cookies Explained](https://web.dev/samesite-cookies-explained/)
   * [Incrementally Better Cookies](https://tools.ietf.org/html/draft-west-cookie-incrementalism-01#section-4.1)
   * [CSRF Is Dead](https://scotthelme.co.uk/csrf-is-dead/)
   * [Same Origin policy](https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy)
   * [Cross-Site Request Forgery Prevention](https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html)
   * [Origin](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Origin)
   * [Class slides](https://docs.google.com/presentation/d/1XYuu3Vu7GwwHM1KzSsG9IPMHglc3bfD-IIUADXIggVo/edit)

* Week 04 - September 20 - Exceptions to the Same Origin Policy
   * [X-Frame-Options](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options), [RFC 7034](https://tools.ietf.org/html/rfc7034)
   * [Frame Hijacking](https://seclab.stanford.edu/websec/frames/)
   * [Busting Frame Busting](https://seclab.stanford.edu/websec/framebusting/)
   * [Class slides](https://docs.google.com/presentation/d/17h10fVeoSunelmmmM57fAfVBa14hy1wPhHfuUqHTfYQ/edit)

* Week 05 - September 27 - Cross-Site Scripting (XSS)
   * [Cross Site Scripting Prevention Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html)
   * [XSS Filter Evasion Cheat Sheet](https://owasp.org/www-community/xss-filter-evasion-cheatsheet)
   * [Class slides](https://docs.google.com/presentation/d/1eaHS8z9UogRbuAkiY5XrypBwfkpyt29nH96jwVfy1KA/edit)

* Week 06 - October 4 - XSS and Content Security Policy (CSP)
   * [Content Security Policy (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) 
   * [CSP Is Dead, Long Live CSP! On the Insecurity of Whitelists and the Future of Content Security Policy](https://research.google/pubs/pub45542/)
   * [Defence in Depth: The medieval castle approach to internet security](https://medstack.co/blog/defence-in-depth-the-medieval-castle-approach-to-internet-security/)
   * [Class slides](https://docs.google.com/presentation/d/1zl9Fnz0_izeb9l4wXYsMuCIlb9J7XfnHgjGZ53LT_ms/edit)

* Week 07 - October 11 - Fingerprinting and Privacy
   * [Browser Fingerprinting: An Introduction and the Challenges Ahead](https://blog.torproject.org/browser-fingerprinting-introduction-and-challenges-ahead)
   * [Class slides (2019)](/slides/pete-snyder-brave-online-tracking-2019.pdf), [(2021 version)](/slides/pete-snyder-brave-online-tracking-2021.pdf)

* Week 08 - October 18 - Transport Layer Security
    * [Looking back at the Snowden revelations](https://blog.cryptographyengineering.com/2019/09/24/looking-back-at-the-snowden-revelations/)
    * [HTTPS encryption on the web](https://transparencyreport.google.com/https/overview)
    * [Class slides](https://docs.google.com/presentation/d/1XCbpbbsOII5B2bu35Y2ZB9DWUU2VI_fhdiF0_jlLHfI/edit)

* Week 09 - October 25 - HSTS, Certificate Transparency
    * [Strict-Transport-Security](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security)
    * [Protecting Against HSTS Abuse](https://webkit.org/blog/8146/protecting-against-hsts-abuse/)
    * [HTTP Public Key Pinning (HPKP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/Public_Key_Pinning) (now redirects to [Certificate Transparency](https://developer.mozilla.org/en-US/docs/Web/Security/Certificate_Transparency); [archived version](http://web.archive.org/web/20220329000600/https://developer.mozilla.org/en-US/docs/Web/HTTP/Public_Key_Pinning); [Wikipedia HPKP](https://en.wikipedia.org/wiki/HTTP_Public_Key_Pinning))
    * [Certificate Transparency](https://tools.ietf.org/html/rfc6962)
    * [Class slides](slides/stark-palmer-https-2019.pdf)

* Week 10 - November 1 - Authentication
    * [Authentication Cheat Sheet](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html)
    * [Class slides](https://docs.google.com/presentation/d/1DSTAmRKJgc6_2-IrzZI_M12eflqM_OSn57Vy00z9iVI/edit)

* Week 11 - November 8 - Local HTTP Server Security
    * [Zoom Zero Day: 4+ Million Webcams & maybe an RCE? Just get them to visit your website!](https://infosecwriteups.com/zoom-zero-day-4-million-webcams-maybe-an-rce-just-get-them-to-visit-your-website-ac75c83f4ef5)
    * [Class slides](https://docs.google.com/presentation/d/1nFfIT7IxwO_qA_jlhjc7ZqekGpKQF7XYZfVAbx0J6eA/edit)

* Week 12 - November 15 - DNS rebinding attacks
    * [Millions of Streaming Devices Are Vulnerable to a Retro Web Attack](https://www.wired.com/story/chromecast-roku-sonos-dns-rebinding-vulnerability/)
    * [Protecting Browsers from DNS Rebinding Attacks](https://crypto.stanford.edu/dns/dns-rebinding.pdf)
    * [Class slides](https://docs.google.com/presentation/d/1sdp10RkKxUyqTtoDH4--UmKTPHQv8jSWu76EATDivhI/edit)

* Week - November 22 - Thanksgiving -- no classes

* Week 13 - November 29 - UI Denial-of-service, Phishing, Side Channels
    * [The Annoying Site](https://github.com/feross/theannoyingsite.com)
    * [Phishing with Unicode Domains](https://www.xudongz.com/blog/2017/idn-phishing/)
    * [The inception bar: a new phishing method](https://jameshfisher.com/2019/04/27/the-inception-bar-a-new-phishing-method/)
    * [Class slides](https://docs.google.com/presentation/d/1tFVuMX7r1FDp4ogX1y5hQilBKxfn40hIhB4dQW4Tizc/edit)

* Week 14 - December 6 - Rehosting, Web Archiving
    * [Rewriting History: Changing the Archived Web from the Present](https://rewritinghistory.cs.washington.edu/) ([slides](slides/Lerner-ACM-CCS-2017.pdf), [video](https://www.youtube.com/watch?v=Pn65m3l0Zw8), [DSHR blog post](https://blog.dshr.org/2017/09/attacking-users-of-wayback-machine.html))
    * [Thinking like a hacker: Security Considerations for High-Fidelity Web Archives](http://labs.rhizome.org/presentations/security.html) ([DSHR blog post](https://blog.dshr.org/2017/06/wac2017-security-issues-for-web-archives.html))
    * [Melting Pot of Origins: Compromising the Intermediary Web Services that Rehost Websites](https://www.ndss-symposium.org/ndss-paper/melting-pot-of-origins-compromising-the-intermediary-web-services-that-rehost-websites/) ([slides](https://www.ndss-symposium.org/wp-content/uploads/24140-slides.pdf), [video](https://www.youtube.com/watch?v=uhA_KGTQXP0))


* Week 15 - December 13 - Exam 

### Assignments (subject to change)

* Weekly review of current events: [#cs533f23](https://twitter.com/search?q=%23cs533f23&src=typed_query&f=live)

* Assignment 1: Basics of HTML, Javascript, and Node
   * [Due: September 13](/assignments/assignment-1.md)

* Assignment 2: Getting Started with Node.js, Express, and Cookies
   * [Due: September 27](/assignments/assignment-2.md)

* Assignment 3: Cookie Report
   * [Due: October 18](/assignments/assignment-3.md)

* Assignment 4: Frames
   * [Due: November 1](/assignments/assignment-4.md)

* Assignment 5: Same-origin Policy, CORS, CSP
   * [Due: November 15](/assignments/assignment-5.md)

* Assignment 6: Fingerprinting
   * Due: [November 29](/assignments/assignment-6.md)

* Assignment 7: Phishing
   * Due: [December 13](/assignments/assignment-7.md)

