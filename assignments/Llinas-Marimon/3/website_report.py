import os
import glob
import csv
import re

website_list = glob.glob('websites_details' + '/*.txt')

# Initialize a list to store the results
results = []

# Loop through each file in the directory
for file in website_list:
    # Extract the URL from the file name
    url = os.path.splitext(os.path.basename(file))[0]

    # Read the contents of the file
    with open(file, 'r') as f:
        content = f.read()

    # Extract the required information from the file contents
    status_match = re.search(r'HTTP/\d\.\d (\d+)', content)
    if status_match:
        status_code = status_match.group(1)
    else:
        status_code = 'N/A'
    cookies = re.findall(r'Set-Cookie: (.+)', content)
    total_cookies = len(cookies)
    http_only_count = 0
    secure_count = 0
    same_site_count = 0
    same_site_strict_count = 0
    same_site_lax_count = 0
    same_site_none_count = 0
    set_path_count = 0

    # Loop through each cookie for each site
    for cookie in cookies:
        # Extract the required attributes
        http_only = 'HttpOnly' in cookie
        secure = 'Secure' in cookie
        same_site = 'SameSite' in cookie
        path = 'Path' in cookie

        # Update counters
        if http_only:
            http_only_count += 1
        if secure:
            secure_count += 1
        if same_site:
            same_site_count += 1
            if 'SameSite=None' in cookie:
                same_site_none_count += 1
            elif 'SameSite=Lax' in cookie:
                same_site_lax_count += 1
            elif 'SameSite=Strict' in cookie:
                same_site_strict_count += 1
        if path:
            set_path_count += 1

    # Append the results to the list
    results.append({'url': url, 'status_code': status_code, 'total_cookies': total_cookies, 'sum_http_only': http_only_count, 'sum_secure': secure_count, 'sum_same_site': same_site_count, 'sum_set_path': set_path_count, 'http_only': http_only_count > 0, 'secure': secure_count > 0, 'same_site': same_site_count > 0, 'path': set_path_count > 0, 'same_site_none': same_site_none_count, 'same_site_lax': same_site_lax_count, 'same_site_strict': same_site_strict_count})

# Write the results to a csv file
with open('website_report.csv', 'w', newline='') as f:
    fieldnames = ['url', 'status_code', 'total_cookies', 'sum_http_only', 'sum_secure', 'sum_same_site', 'sum_set_path', 'http_only', 'secure', 'same_site', 'path', 'same_site_none', 'same_site_lax', 'same_site_strict']
    writer = csv.DictWriter(f, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(results)