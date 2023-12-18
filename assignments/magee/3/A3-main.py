import os, subprocess, re, statistics
from collections import OrderedDict
from operator import itemgetter


def sort_dict_by_value_lambda(test_dict):
    sorted_list = sorted(test_dict.items(), key=lambda x: x[1])
    return dict(sorted_list)

file1 = 'domain_list.txt'
file2 = 'problem_domains.txt'

with open(file1) as infile, open('data_out.txt', 'w') as outfile:
    count = 1
    for line in infile:
        domain = line.strip()

        # Command list
        curl_command = ['curl', '-Ilsk', domain]

        # Open process to send requests and write to user display
        result = subprocess.run(curl_command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

        # Write results to file
        outfile.write(f'SITE {count}: {domain}\n')
        outfile.write(result.stdout)
        outfile.write(result.stderr)

        # Print counter
        print(f'SITE {count}: {domain} completed')

        count += 1

print('\n' + '########################## Cookie Count ##########################' + '\n')
with open('data_out.txt') as infile:

    attribute_patterns = {
        'HttpOnly': re.compile(r'HttpOnly', re.I),
        'Secure': re.compile(r'Secure', re.I),
        'SameSite': re.compile(r'SameSite', re.I),
        'Path': re.compile(r'Path', re.I),
        'None': re.compile(r'None', re.I)
    }
    attribute_counts = {
        'HttpOnly': 0,
        'Secure': 0,
        'SameSite': 0,
        'SameSite Strict': 0,
        'SameSite=lax': 0,
        'Path': 0,
        'None': 0
    }


    for line in infile:
        for attribute, pattern in attribute_patterns.items():
            if pattern.search(line):
                attribute_counts[attribute] += 1

    c_list = []
    for attribute, count in attribute_counts.items():
        c_list.append(count)
        print(f'{attribute}: {count}')

print('\n' + '########################## Min/Max/Mean/Median for Cookie Count ##########################' + '\n')

print(f'Min: {min(attribute_counts.values())}' )
print(f'Max: {max(attribute_counts.values())}')
print(f'Mean: {statistics.mean(list(attribute_counts.values()))}')
print(f'Median: {statistics.mean(list(attribute_counts.values()))}')
