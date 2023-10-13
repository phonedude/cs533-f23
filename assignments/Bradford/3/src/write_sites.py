#!/usr/bin/python3

import os
import statistics

def main():
    sites = os.listdir('filtered_responses')

    with open('siteinfo.md', 'w') as output:
        output.write("| Site | Status code | Number of cookies |\n")
        output.write("|----------------|----------------|----------------|\n")
        count_list = []
        for site in sites:
            with open(f'filtered_responses/{site}', 'r') as file:
                lines = file.readlines()
                if 'timed out' in lines[0]:
                    output.write(f'| {site} | Timed out | 0 |\n')
                    continue
                status_code = lines[0].split('HTTP/1.1 ')[1].rstrip()
                try:
                    cookie_count = len(lines[1:])
                    count_list.append(cookie_count)
                    output.write(f'| {site} | {status_code} | {cookie_count} |\n')
                except IndexError:
                    output.write(f'| {site} | {status_code} | 0 |\n')
                    count_list.append(0)
        print(f'There were {sum(count_list)} cookies set in the {len(count_list)} web sites that could be reached')
        print(f'The average number of cookies is {statistics.mean(count_list)}')
        print(f'The median number of cookies is {statistics.median(count_list)}')
        print(f'The minimum number of cookies was {min(count_list)}')
        print(f'The maximum number of cookies was {max(count_list)}')


if __name__ == "__main__":
    main()