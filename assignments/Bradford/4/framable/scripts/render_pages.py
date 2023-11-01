#!/usr/bin/python3

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import time

def main():
    options = Options()
    options.set_capability('goog:loggingPrefs', {"browser": 'ALL'})
    options.add_argument("--disable-features=IsolateOrigins,site-per-process")
    options.add_argument("--disable-site-isolation-trials")
    driver = webdriver.Chrome(options=options)

    with open('iframe_table.md', 'w') as output:
        output.write('| Site | Frameability | Reason for not being frameable |\n')
        output.write('|--------------|--------------|--------------------------------|\n')

        with open('CBRAD022@ODU.EDU', 'r') as url_file:
            urls = [url.rstrip() for url in  url_file]
        num_frameable = 0
        for url in urls:
            frameable = 'Frameable'
            reason = 'N/A'
            driver.get(f'http://localhost:4000/html/{url}.html')
            time.sleep(3)
            for entry in driver.get_log('browser'):
                if 'Refused to display' in entry['message'] or 'security' in entry['message'] or 'status of 403' in entry['message']:
                    reason = entry['message']
                    frameable = 'Not frameable'
            output.write(f'| {url} | {frameable} | {reason} |\n')
            if reason == "N/A":
                num_frameable += 1
        print(f"{num_frameable} sites were frameable")

if __name__ == "__main__":
    main()