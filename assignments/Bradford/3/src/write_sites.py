#!/usr/bin/python3

import os

def main():
    sites = os.listdir('filtered_responses')

    with open('siteinfo.md', 'w') as output:
        output.write("| Site | Status code | Number of cookies |\n")
        output.write("|----------------|----------------|----------------|\n")
        for site in sites:
            with open(f'filtered_responses/{site}', 'r') as file:
                lines = file.readlines()
                if 'timed out' in lines[0]:
                    output.write(f'| {site} | Timed out | 0 |\n')
                    continue
                status_code = lines[0].split('HTTP/1.1 ')[1].rstrip()
                try:
                    cookie_count = len(lines[1:])
                    output.write(f'| {site} | {status_code} | {cookie_count} |\n')
                except IndexError:
                    output.write(f'| {site} | {status_code} | 0 |\n')


if __name__ == "__main__":
    main()