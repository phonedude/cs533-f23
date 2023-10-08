#!/usr/bin/python3

import os
import statistics

def main():
    sites = os.listdir('filtered_responses')

    with open('siteinfo.md', 'w') as output:
        output.write("| Site | Status code | Number of cookies |\n")
        output.write("|----------------|----------------|----------------|\n")
        total_cookies = 0
        total_sites = 0
        count_list = []
        for site in sites:
            total_sites += 1
            with open(f'filtered_responses/{site}', 'r') as file:
                lines = file.readlines()
                if 'timed out' in lines[0]:
                    output.write(f'| {site} | Timed out | 0 |\n')
                    count_list.append(0)
                    continue
                status_code = lines[0].split('HTTP/1.1 ')[1].rstrip()
                try:
                    cookie_count = len(lines[1:])
                    total_cookies += cookie_count
                    count_list.append(cookie_count)
                    output.write(f'| {site} | {status_code} | {cookie_count} |\n')
                except IndexError:
                    output.write(f'| {site} | {status_code} | 0 |\n')
                    count_list.append(0)
        print(f'There were {total_cookies} cookies set in the {total_sites} web sites')
        print(f'The average number of cookies is {statistics.mean(count_list)}')
        print(f'The median number of cookies is {statistics.median(count_list)}')
        print(f'The minimum number of cookies was {min(count_list)}')
        print(f'The maximum number of cookies was {max(count_list)}')


if __name__ == "__main__":
    main()