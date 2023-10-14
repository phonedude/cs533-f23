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
| ['301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '200', '301', '400', '400', '301', '200', '302', '301', '301', '503', '200', '302', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '302', '301', '301', '301', '301', '301', '302', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '200', '301', '301', '301', '308', '302', '301', '301', '301', '301', '301', '302', '301', '301', '301', '301', '301', '301', '301', '301', '301', '301', '418', '418', '301', '301', '301', '301', '301', '301', '301'] | [3, 0, 1, 6, 0, 0, 4, 4, 0, 0, 0, 1, 0, 0, 0, 1, 3, 2, 2, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 3, 0, 4, 0, 3, 0, 0, 0, 0, 0, 3, 0, 1, 0, 0, 0, 0, 0, 5, 3, 3, 0, 0, 3, 3, 0, 4, 0, 0, 7, 3, 0, 0, 2, 0, 4, 0, 0, 0, 0, 0, 3, 3, 0, 2, 0, 2, 0, 0, 4, 3, 0, 0, 0, 0, 1, 3, 0, 3, 6, 0, 1, 12] | 61 | 47 | 33 | 0 | 9 | 24 | 50 | 0 | 0 | 12 | 1.3 | 0 |



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
<img src="images/8.png" width="700">
Kind of error it gave: Time out -> It took longer than 60 seconds to load.

planalto.gov.br

<img src="images/9.png" width="700">
<img src="images/10.png" width="700">
Kind of error it gave: Connection reset -> Connection Reset (curl: (56) Recv failure: Connection was reset).