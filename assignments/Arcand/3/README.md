Assignment Description:

I created a README.md report containing a comprehensive table summarizing the cookie practices of the 100 unique, random websites from Mozilla's Top 500 Sites I was assigned. The report includes the following information for each website:

The terminating status codes
The number of cookies set
The HttpOnly, Secure, SameSite (along with the policy), and Path (and its value) cookie attributes.

It also answers the following questions.

How many cookies among the 100 sites set HttpOnly?
How many cookies among the 100 sites set Secure?
How many cookies among the 100 sites set SameSite? Among those that set SameSite, how many are Strict, Lax, and None?
How many cookies among the 100 sites set a Path? How many of those have values other than "/"?

Lastly, I have also provided the Min/Max/Mean/Median number of cookies set across the 100 sites.

The files are saved in the Arcand\3 folder.
aggregated_data.txt is the aggregation of all of the response files created by running get_responses.sh on website_list.txt.
I then ran file_analysis.py on the response files to create aggregated_data.txt.
file_analysis.py parses through the response files to create aggregated_data.txt.
get_responses.sh creates the response files.
The README.md helps explain the assignment and provide documentation.
website_list.txt is a list of the 100 unique, random websites from Mozilla's Top 500 Sites I was assigned excluding sites that give errors.

Here is my table.

| Termination Status Codes | For each site, the number of different cookies that are set. | How many cookies set HttpOnly? | How many cookies set Secure? | How many cookies set SameSite? | How many are Strict? | How many are Lax? | How many are None? | How many cookies set a Path? | How many of those are values other than "/"? | Min number of cookies | Max number of cookies | Mean number of cookies | Median number of cookies |
|--------------------------|-----------------------|------------------------|---------------------|----------------------|----------------|-------------|--------------|--------------------|--------------------------|-------------|-------------|--------------|---------------|
| ['200', '200', '403', '200', '405', '200', '200', '200', '405', '200', '200', '200', '400', '400', '200', '200', '302', '200', '200', '503', '200', '302', '200', '200', '200', '200', '200', '200', '200', '403', '401', '200', '200', '200', '200', '200', '200', '200', '200', '200', '404', '200', '200', '200', '200', '200', '302', '200', '200', '200', '200', '200', '302', '200', '200', '200', '200', '200', '200', '200', '200', '200', '200', '200', '200', '200', '200', '200', '308', '302', '200', '200', '200', '200', '200', '302', '200', '200', '200', '404', '200', '200', '200', '200', '403', '200', '418', '200', '200', '200', '200', '200', '403', '200'] | [3, 0, 1, 6, 0, 0, 4, 4, 0, 0, 0, 1, 0, 0, 0, 1, 3, 2, 2, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 3, 0, 4, 0, 3, 0, 0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 5, 3, 3, 0, 0, 3, 3, 0, 4, 0, 0, 7, 3, 0, 0, 2, 0, 4, 0, 0, 0, 0, 0, 3, 3, 0, 2, 0, 2, 0, 0, 4, 3, 0, 0, 0, 0, 1, 3, 0, 3, 6, 0, 1, 12] | 61 | 47 | 33 | 0 | 9 | 24 | 50 | 0 | 0 | 12 | 1.3 | 0 |

Mapping the terminating response codes to sites

| Website              | Response Code |
| ---------------------- | --- |
| abc.net.au             | 200           |
| about.com              | 200 |
| abril.com.br           | 200 |
| academia.edu           | 403 |
| addthis.com            | 200 |
| adobe.com              | 405 |
| adssettings.google.com | 200 |
| afternic.com           | 200 |
| amazon.co.uk           | 200 |
| asahi.com              | 405 |
| biglobe.ne.jp          | 200 |
| bloomberg.com          | 200 |
| bp0.blogger.com        | 400 |
| bp1.blogger.com        | 400 |
| britannica.com         | 400 |
| calendar.google.com    | 200 |
| cdc.gov                | 200 |
| clarin.com             | 200 |
| cloudflare.com         | 200 |
| cnbc.com               | 503 |
| com.com                | 200 |
| creativecommons.org    | 200 |
| discord.com            | 200 |
| disney.com             | 200 |
| doi.org                | 200 |
| dropcatch.com          | 200 |
| e-monsite.com          | 200 |
| esa.int                | 200 |
| evernote.com           | 200 |
| fastcompany.com        | 200 |
| fifa.com               | 403 |
| files.wordpress.com    | 401 |
| focus.de               | 200 |
| ft.com                 | 200 |
| get.google.com         | 200 |
| gettyimages.com        | 200 |
| gofundme.com           | 200 |
| goo.gl                 | 200 |
| goodreads.com          | 200 |
| gravatar.com           | 200 |
| gstatic.com            | 200 |
| home.pl                | 404 |
| howstuffworks.com      | 200 |
| huawei.com             | 200 |
| hubspot.com            | 200 |
| ietf.org               | 200 |
| ign.com                | 403 |
| indianexpress.com      | 200 |
| lg.com                 | 200 |
| liveinternet.ru        | 200 |
| loc.gov                | 200 |
| m.wikipedia.org        | 200 |
| maps.google.com        | 200 |
| mediafire.com          | 200 |
| mirror.co.uk           | 200 |
| mozilla.com            | 200 |
| mozilla.org            | 200 |
| myaccount.google.com   | 200 |
| namecheap.com          | 200 |
| narod.ru               | 200 |
| nature.com             | 200 |
| nginx.com              | 200 |
| nydailynews.com        | 200 |
| nytimes.com            | 200 |
| ok.ru                  | 200 |
| ovh.com                | 200 |
| ox.ac.uk               | 200 |
| php.net                | 200 |
| pinterest.com          | 200 |
| play.google.com        | 200 |
| plus.google.com        | 200 |
| pt.wikipedia.org       | 200 |
| reg.ru                 | 200 |
| ru.wikipedia.org       | 200 |
| sakura.ne.jp           | 200 |
| sky.com                | 200 |
| slideshare.net         | 200 |
| soundcloud.com         | 200 |
| springer.com           | 200 |
| ssl-images-amazon.com  | 200 |
| support.google.com     | 404 |
| t.co                   | 200 |
| techcrunch.com         | 200 |
| ted.com                | 200 |
| themeforest.net        | 200 |
| twitter.com            | 403 |
| uol.com.br             | 200 |
| vkontakte.ru           | 418 |
| wa.me                  | 200 |
| wikihow.com            | 200 |
| www.wix.com            | 200 |
| yadi.sk                | 200 |
| youtu.be               | 200 |
| ytimg.com              | 403 |
| vk.com                 | 418 |
| zendesk.com            | 403 |
| zoom.us                | 200 |

Images:

Viewing the files

response_files:
<img src="images/1.png" width="700">

aggregated_data.txt:
<img src="images/2.png" width="700">

file_analysis.py
<img src="images/3.png" width="700">

get_responses.sh
<img src="images/4.png" width="700">

Sites that give errors are not included in my numerical reporting.
Separate list of sites that give errors:

java.com

<img src="images/5.png" width="700">
<img src="images/6.png" width="700">
Kind of error it gave: Time out -> It took longer than 60 seconds to load.

nokia.com

<img src="images/7.png" width="700">
Kind of error it gave: Time out -> It took longer than 60 seconds to load.

planalto.gov.br

<img src="images/9.png" width="700">
<img src="images/10.png" width="700">
Kind of error it gave: Connection reset -> Connection Reset (curl: (56) Recv failure: Connection was reset).

New, single table with 97 rows:

| host                   | status code | number of cookies |
| ---------------------- | ----------- | ----------------- |
| abc.net.au             | 200         | 3                 |
| about.com              | 200         | 0                 |
| abril.com.br           | 200         | 1                 |
| academia.edu           | 403         | 6                 |
| addthis.com            | 200         | 0                 |
| adobe.com              | 405         | 0                 |
| adssettings.google.com | 200         | 4                 |
| afternic.com           | 200         | 4                 |
| amazon.co.uk           | 200         | 0                 |
| asahi.com              | 405         | 0                 |
| biglobe.ne.jp          | 200         | 0                 |
| bloomberg.com          | 200         | 1                 |
| bp0.blogger.com        | 400         | 0                 |
| bp1.blogger.com        | 400         | 0                 |
| britannica.com         | 400         | 0                 |
| calendar.google.com    | 200         | 1                 |
| cdc.gov                | 200         | 3                 |
| clarin.com             | 200         | 2                 |
| cloudflare.com         | 200         | 2                 |
| cnbc.com               | 503         | 0                 |
| com.com                | 200         | 0                 |
| creativecommons.org    | 200         | 0                 |
| discord.com            | 200         | 6                 |
| disney.com             | 200         | 0                 |
| doi.org                | 200         | 0                 |
| dropcatch.com          | 200         | 0                 |
| e-monsite.com          | 200         | 0                 |
| esa.int                | 200         | 0                 |
| evernote.com           | 200         | 0                 |
| fastcompany.com        | 200         | 1                 |
| fifa.com               | 403         | 0                 |
| files.wordpress.com    | 401         | 0                 |
| focus.de               | 200         | 0                 |
| ft.com                 | 200         | 1                 |
| get.google.com         | 200         | 3                 |
| gettyimages.com        | 200         | 0                 |
| gofundme.com           | 200         | 4                 |
| goo.gl                 | 200         | 0                 |
| goodreads.com          | 200         | 3                 |
| gravatar.com           | 200         | 0                 |
| gstatic.com            | 200         | 0                 |
| home.pl                | 404         | 0                 |
| howstuffworks.com      | 200         | 0                 |
| huawei.com             | 200         | 0                 |
| hubspot.com            | 200         | 3                 |
| ietf.org               | 200         | 0                 |
| ign.com                | 403         | 1                 |
| indianexpress.com      | 200         | 0                 |
| lg.com                 | 200         | 0                 |
| liveinternet.ru        | 200         | 0                 |
| loc.gov                | 200         | 0                 |
| m.wikipedia.org        | 200         | 0                 |
| maps.google.com        | 200         | 5                 |
| mediafire.com          | 200         | 3                 |
| mirror.co.uk           | 200         | 3                 |
| mozilla.com            | 200         | 0                 |
| mozilla.org            | 200         | 0                 |
| myaccount.google.com   | 200         | 3                 |
| namecheap.com          | 200         | 3                 |
| narod.ru               | 200         | 0                 |
| nature.com             | 200         | 4                 |
| nginx.com              | 200         | 0                 |
| nydailynews.com        | 200         | 0                 |
| nytimes.com            | 200         | 7                 |
| ok.ru                  | 200         | 3                 |
| ovh.com                | 200         | 0                 |
| ox.ac.uk               | 200         | 0                 |
| php.net                | 200         | 2                 |
| pinterest.com          | 200         | 0                 |
| play.google.com        | 200         | 4                 |
| plus.google.com        | 200         | 0                 |
| pt.wikipedia.org       | 200         | 0                 |
| reg.ru                 | 200         | 0                 |
| ru.wikipedia.org       | 200         | 0                 |
| sakura.ne.jp           | 200         | 0                 |
| sky.com                | 200         | 3                 |
| slideshare.net         | 200         | 3                 |
| soundcloud.com         | 200         | 0                 |
| springer.com           | 200         | 2                 |
| ssl-images-amazon.com  | 200         | 0                 |
| support.google.com     | 404         | 2                 |
| t.co                   | 200         | 0                 |
| techcrunch.com         | 200         | 0                 |
| ted.com                | 200         | 4                 |
| themeforest.net        | 200         | 3                 |
| twitter.com            | 403         | 0                 |
| uol.com.br             | 200         | 0                 |
| vkontakte.ru           | 418         | 0                 |
| wa.me                  | 200         | 0                 |
| wikihow.com            | 200         | 1                 |
| www.wix.com            | 200         | 3                 |
| yadi.sk                | 200         | 0                 |
| youtu.be               | 200         | 3                 |
| ytimg.com              | 403         | 6                 |
| vk.com                 | 418         | 0                 |
| zendesk.com            | 403         | 1                 |
| zoom.us                | 200         | 12                |
