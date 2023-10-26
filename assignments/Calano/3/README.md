# Report

To collect the data I wrote a Bash script to iterate over the provided URLs and scan their header responses. This script primarily uses the `cURL` command to request and receive response information with a hard timneout of 60 seconds. Secondarily, `grep` is used for error checking and standard linux piping, redirections, and substitutions are used for handling file I/O.

For each site, the script produces a file detailing the received header response and then stores it under the [files](/files) directory. If an error was found during the scan, the site data is instead written under the [errors](/errors) directory.

Separately, I used a Python script to handle the file parsing and analysis. The Python script looks over all of the files to derive a simple statistical analysis and inventory of the cookie data in the successfully scanned URLs. Once analyzed it uses string operations to format and write the data into the markdown tables below.

## Errors

Of the 100 websites scanned, 6 returned some type of error, as noted in the table below. Two of the errors were timeouts that broke the 60 second limit, one error was related to acquiring a secure server connection, and one website returned an empty response. Two of the hosts were not able to be resolved, one of which `marketingplatform.google....` appears to be an improper URL string. Both `java.com` and `mega.nz` are reachable via Web Browser and most likely have netcode implemented which block robots, crawlers, and scripts.

| Site | Error Code | Error Message |
| :--- | :---: | ---: |
| abril.com.br | 35 |  OpenSSL/3.1.3: error:0A000152:SSL routines::unsafe legacy renegotiation disabled |
| java.com | 28 |  Operation timed out after 60003 milliseconds with 0 bytes received |
| marketingplatform.google.... | 6 |  Could not resolve host: marketingplatform.google.... |
| mega.nz | 28 |  Operation timed out after 59920 milliseconds with 0 bytes received |
| nih.gov | 52 |  Empty reply from server |
| ytimg.com | 6 |  Could not resolve host: ytimg.com |

## Cookie Statistics

| Total | Least | Most | Mean | Median | Mode |
| :---: | :---: | :---: | :---: | :---: | :---: |
| 171 | 0 | 10 | 1.8191489361702127 | 1 | 0 |

In examining the basic statistics for the found cookies we can see that of the `94` successfully scanned sites we can see that sites ranged from using no cookies at all to 10, in the case of the provided set. While the average number of cookies used per website is just under 2, the largest bulk of websites did not use any cookies at all. I was unfamiliar with limitations surrounding cookies but it appears that the consistent cap of 10 cookies found in the data is a mere conicidence as the limit per site and domain is much higher and can be arbitrarily determined by browser settings ([RFC 2109](https://www.ietf.org/rfc/rfc2109.txt)).

## Cookie Breakdown

| Secure | HttpOnly | Path | SameSite (Strict) | SameSite (Lax) | SameSite (None) |
| :---: | :---: | :---: | :---: | :---: | :---: |
| 74 | 48 | 165 | 3 | 8 | 14 |

Of those `171` total cookies retrieved, `97%` had the a `Path` variable set, `43%` had the `Secure` flag set, and `28%` had the `HttpOnly` flag set. Not all sites were consistent in their cookie headers. Some sites wrote cookie keys in lowercase format rather than capitalized and/or included spacing after `;` delimiters.

### Non-root Paths

From my set of URLs, I only came across one site which has a non-root path variable set. This cookie included a secure flag as well and appears to be used for securely determining how to render page content.

| Site | Path |
| :--- | ---: |
| privacyshield.gov | /s |

## Site Details

The below table details the various information per site, including the final returned status code, total number of cookies, and the properties associated with those site cookies. Of the `94` successfully scanned sites `14 (15%)` returned a non-`200` status code, `1` being a `503` response from `amzn.to` and the rest being some type of `400`-level response


| Site | Status | Cookies | Secure | HttpOnly | Path | SameSite |
| :--- | :---: | :---: | :---: | :---: | :---: | ---: |
| about.com | 200 | 🍪 0 | - | - | - | - |
| admin.ch | 200 | 🍪 2 | | | | |
| | | | ✔️ | ✔️ | / | ❌ |
| | | | ❌ | ✔️ | / | ❌ |
| alibaba.com | 200 | 🍪 3 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | None |
| | | | ✔️ | ✔️ | / | ❌ |
| amazon.es | 405 | 🍪 10 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| amazon.it | 405 | 🍪 10 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| amzn.to | 503 | 🍪 0 | - | - | - | - |
| android.com | 200 | 🍪 0 | - | - | - | - |
| apnews.com | 200 | 🍪 0 | - | - | - | - |
| archive.org | 200 | 🍪 0 | - | - | - | - |
| bbc.com | 200 | 🍪 0 | - | - | - | - |
| britannica.com | 200 | 🍪 5 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| cbc.ca | 200 | 🍪 0 | - | - | - | - |
| clarin.com | 200 | 🍪 1 | | | | |
| | | | ✔️ | ✔️ | / | None |
| cnet.com | 200 | 🍪 4 | | | | |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | Lax |
| cnil.fr | 200 | 🍪 1 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| cointernet.com.co | 200 | 🍪 0 | - | - | - | - |
| cpanel.net | 200 | 🍪 0 | - | - | - | - |
| detik.com | 200 | 🍪 0 | - | - | - | - |
| developers.google.com | 200 | 🍪 2 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| dropcatch.com | 200 | 🍪 0 | - | - | - | - |
| dw.com | 200 | 🍪 0 | - | - | - | - |
| e-monsite.com | 200 | 🍪 0 | - | - | - | - |
| espn.com | 200 | 🍪 8 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| espn.go.com | 200 | 🍪 8 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| evernote.com | 200 | 🍪 0 | - | - | - | - |
| facebook.com | 200 | 🍪 2 | | | | |
| | | | ✔️ | ✔️ | / | ❌ |
| | | | ✔️ | ✔️ | / | ❌ |
| feedburner.com | 200 | 🍪 0 | - | - | - | - |
| fifa.com | 401 | 🍪 0 | - | - | - | - |
| forms.gle | 400 | 🍪 0 | - | - | - | - |
| foxnews.com | 200 | 🍪 0 | - | - | - | - |
| fr.wikipedia.org | 200 | 🍪 4 | | | | |
| | | | ✔️ | ✔️ | / | ❌ |
| | | | ✔️ | ✔️ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| freepik.com | 200 | 🍪 3 | | | | |
| | | | ✔️ | ❌ | / | Strict |
| | | | ❌ | ❌ | ❌ | ❌ |
| | | | ❌ | ❌ | ❌ | ❌ |
| gmail.com | 200 | 🍪 1 | | | | |
| | | | ✔️ | ✔️ | / | ❌ |
| gnu.org | 200 | 🍪 0 | - | - | - | - |
| google.co.id | 200 | 🍪 3 | | | | |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ✔️ | / | Lax |
| | | | ❌ | ✔️ | / | ❌ |
| google.de | 200 | 🍪 3 | | | | |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ✔️ | / | Lax |
| | | | ❌ | ✔️ | / | ❌ |
| google.es | 200 | 🍪 3 | | | | |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ✔️ | / | Lax |
| | | | ❌ | ✔️ | / | ❌ |
| gooyaabitemplates.com | 406 | 🍪 0 | - | - | - | - |
| hatena.ne.jp | 200 | 🍪 1 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| hindustantimes.com | 200 | 🍪 1 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| huawei.com | 200 | 🍪 0 | - | - | - | - |
| huffingtonpost.com | 200 | 🍪 3 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| huffpost.com | 200 | 🍪 3 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| ig.com.br | 200 | 🍪 0 | - | - | - | - |
| imageshack.com | 200 | 🍪 0 | - | - | - | - |
| indiatimes.com | 403 | 🍪 0 | - | - | - | - |
| it.wikipedia.org | 200 | 🍪 5 | | | | |
| | | | ✔️ | ✔️ | / | ❌ |
| | | | ✔️ | ✔️ | / | ❌ |
| | | | ✔️ | ✔️ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| m.wikipedia.org | 200 | 🍪 4 | | | | |
| | | | ✔️ | ✔️ | / | ❌ |
| | | | ✔️ | ✔️ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| mail.google.com | 200 | 🍪 1 | | | | |
| | | | ✔️ | ✔️ | / | ❌ |
| mail.ru | 200 | 🍪 5 | | | | |
| | | | ✔️ | ✔️ | / | None |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ✔️ | ✔️ | / | None |
| | | | ✔️ | ✔️ | / | ❌ |
| mozilla.org | 200 | 🍪 0 | - | - | - | - |
| msn.com | 404 | 🍪 5 | | | | |
| | | | ✔️ | ✔️ | / | ❌ |
| | | | ✔️ | ❌ | / | None |
| | | | ❌ | ✔️ | / | ❌ |
| | | | ❌ | ✔️ | / | ❌ |
| | | | ❌ | ✔️ | / | ❌ |
| myspace.com | 200 | 🍪 4 | | | | |
| | | | ❌ | ✔️ | / | ❌ |
| | | | ❌ | ✔️ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| nba.com | 200 | 🍪 2 | | | | |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| nbcnews.com | 200 | 🍪 2 | | | | |
| | | | ✔️ | ❌ | / | None |
| | | | ✔️ | ❌ | / | None |
| netflix.com | 405 | 🍪 3 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ✔️ | ✔️ | / | Strict |
| | | | ✔️ | ✔️ | / | Lax |
| netvibes.com | 200 | 🍪 1 | | | | |
| | | | ✔️ | ❌ | / | None |
| networkadvertising.org | 200 | 🍪 0 | - | - | - | - |
| news.yahoo.com | 200 | 🍪 0 | - | - | - | - |
| nginx.com | 200 | 🍪 5 | | | | |
| | | | ❌ | ❌ | ❌ | ❌ |
| | | | ❌ | ✔️ | ❌ | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ✔️ | ✔️ | / | Strict |
| ovh.com | 200 | 🍪 0 | - | - | - | - |
| photobucket.com | 200 | 🍪 0 | - | - | - | - |
| photos.google.com | 200 | 🍪 0 | - | - | - | - |
| play.google.com | 200 | 🍪 1 | | | | |
| | | | ❌ | ✔️ | / | ❌ |
| plos.org | 200 | 🍪 0 | - | - | - | - |
| prestashop.com | 200 | 🍪 1 | | | | |
| | | | ✔️ | ✔️ | / | None |
| privacyshield.gov | 200 | 🍪 3 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | /s | ❌ |
| pt.wikipedia.org | 200 | 🍪 4 | | | | |
| | | | ✔️ | ✔️ | / | ❌ |
| | | | ✔️ | ✔️ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| quora.com | 403 | 🍪 0 | - | - | - | - |
| rakuten.co.jp | 200 | 🍪 0 | - | - | - | - |
| ria.ru | 200 | 🍪 0 | - | - | - | - |
| search.google.com | 200 | 🍪 3 | | | | |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ✔️ | / | Lax |
| | | | ❌ | ✔️ | / | ❌ |
| sendspace.com | 200 | 🍪 2 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| shutterstock.com | 406 | 🍪 0 | - | - | - | - |
| sky.com | 200 | 🍪 3 | | | | |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| slideshare.net | 200 | 🍪 1 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| target.com | 200 | 🍪 5 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| terra.com.br | 200 | 🍪 2 | | | | |
| | | | ✔️ | ❌ | / | None |
| | | | ✔️ | ❌ | ❌ | None |
| theatlantic.com | 200 | 🍪 4 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| thesun.co.uk | 200 | 🍪 1 | | | | |
| | | | ✔️ | ❌ | / | None |
| thetimes.co.uk | 200 | 🍪 5 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | ❌ | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| tiktok.com | 403 | 🍪 0 | - | - | - | - |
| ubuntu.com | 200 | 🍪 0 | - | - | - | - |
| video.google.com | 200 | 🍪 3 | | | | |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ✔️ | / | Lax |
| | | | ❌ | ✔️ | / | ❌ |
| vk.com | 418 | 🍪 0 | - | - | - | - |
| w3.org | 200 | 🍪 1 | | | | |
| | | | ✔️ | ✔️ | / | None |
| walmart.com | 200 | 🍪 1 | | | | |
| | | | ✔️ | ✔️ | / | None |
| weather.com | 200 | 🍪 2 | | | | |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| webmd.com | 200 | 🍪 4 | | | | |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| | | | ❌ | ❌ | / | ❌ |
| woocommerce.com | 200 | 🍪 0 | - | - | - | - |
| www.google.com | 200 | 🍪 3 | | | | |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ✔️ | / | Lax |
| | | | ❌ | ✔️ | / | ❌ |
| www.gov.br | 403 | 🍪 0 | - | - | - | - |
| www.wikipedia.org | 200 | 🍪 4 | | | | |
| | | | ✔️ | ✔️ | / | ❌ |
| | | | ✔️ | ✔️ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| | | | ✔️ | ❌ | / | ❌ |
| www.yahoo.com | 200 | 🍪 0 | - | - | - | - |

# Turtles all the way down!

The phrase "Turtled all the way down" appears in many instances of popular culture, including the famous sci-fi series "Discworld". The phrase is much older though and references a hypothetical or mythological notion of the world being a flat surface held up upon the back of a cosmic turtle, which sits upon the back up another, larger cosmic turtle, recursing through infinity!

In the context of the class slides, the phrase refers to a scenario in which a malicious actor could embed recursive frames into a page in order to escape same-origin policies for a web page.