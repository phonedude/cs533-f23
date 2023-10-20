# Assignment 3

This repository contain the report for 100 of the Mozilla top 500 websites 

## List of directories and files

*  **Websites Assigned**
    * [websites.txt](websites.txt)
        * Assigned list of 100 websites
    * [websites_details](websites_details)
        * Contain text files including curl responses for each website from [websites.txt](websites.txt). 

* **Coding Files**
  * [url_output.sh](url_output.sh)
    * Used for extract the url responses for each website
  * [website_report.py](website_report.py)
    * Used for get the following:
        * The terminating status codes for each site. Note this is the final status code, not the 301s, 302, etc. that you may encounter on your way to the final status code. More on that below.
        * For each site, the number of different cookies that are set. Keep in mind that each HTTP reponse can have multiple "Set-Cookie:" headers.
        * For each cookie, extract the attributes: HttpOnly, Secure, SameSite (and the corresponding policy), Path (and the corresponding value). With this data you will answer:
            1. How many cookies set HttpOnly?
            2. How many cookies set Secure?
            3. How many cookies set SameSite? For those that set SameSite, how many are Strict? How many are Lax? How many are None?
            4. How many cookies set a Path? How many of those are values other than "/"?
  * [summary_report.py](summary_report.py)
    * Used for summarizing the entire table, getting the Min/Max/Mean/Median number of cookies for the 100 sites

* **Output files**
  * [website_report.csv](website_report.csv) 
    * Output file from [website_report.py](website_report.py)

## Summary
* Total number of cookies for 100 websites: 59

**Summary of the cookies which have following attributes:**

* HTTPOnly - 21
* Secure - 23
* Samesite - 18
  * None - 10
  * Lax - 1
  * Strict - 0
* Path: 12 

## Min/Max/Mean/Median
**Minimum, maximum, mean, and median number of the cookies extracted from 100 websites**
  * Minimum number of cookies per site - 0
  * Maximum number of cookies per site - 11
  * Mean number of cookies - 0.59
  * Median number of cookies - 0
******

### Screenshots

* Viewing the list of the assigned websites.

<img src="assigned_websites.png" width="700" >

* Received curl responses saved into text files separately.

<img src="responses_websites.png" width="700" >

* Running the code of cookie_report_summary.py 

<img src="summary_report.png" width="700" >
