import os, subprocess


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


with open('data_out.txt', 'r') as outfile:
    # Cookie lists
    http_only = []
    secure = []
    strict_same_site = []
    lax_same_site = []
    none_same_site = []

    for line in outfile:
        if ''



#curl_table = []
#curl_table.append(domain)
#curl_table.append()