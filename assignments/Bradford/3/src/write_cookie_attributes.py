#!/usr/bin/python3

import os

def main():
    sites = os.listdir('filtered_responses')

    with open('cookieinfo.md', 'w') as output:
        output.write('| Site | Path? | HttPOnly? | Secure? | SameSite? | SameSite Policy? |\n')
        output.write("|-----------|-----------|-----------|-----------|-----------|-----------| \n")
        cookie_count = 0
        samesite_count = 0
        secure_count = 0
        httponly_count = 0
        path_count = 0
        path_not_slash_count = 0
        strict_count = 0
        lax_count = 0
        none_count = 0
        for site in sites:
            with open(f'filtered_responses/{site}', 'r') as file:
                lines = file.readlines()
                if(len(lines) <= 1):
                    continue
                for cookie in lines[1:]:
                    cookie_count += 1
                    path = 'None'
                    httponly = False
                    secure = False
                    samesite = False
                    samesite_policy = 'N/A'
                    cookie_attributes = cookie.split(';')
                    for attribute in cookie_attributes:
                        if 'path' in attribute.lower():
                            path = attribute.split('=')[1].rstrip()
                            path_count += 1
                            if path != '/':
                                path_not_slash_count += 1
                        elif 'httponly' in attribute.lower():
                            httponly = True
                            httponly_count += 1
                        elif 'secure' in attribute.lower():
                            secure = True
                            secure_count += 1
                        elif 'samesite' in attribute.lower():
                            samesite = True
                            samesite_policy = attribute.split('=')[1].rstrip()
                            samesite_count += 1
                            if 'strict' in samesite_policy.lower():
                                strict_count += 1
                            elif 'lax' in samesite_policy.lower():
                                lax_count += 1
                            elif 'none' in samesite_policy.lower():
                                none_count += 1
                    output.write(f'| {site} | {path} | {httponly} | {secure} | {samesite} | {samesite_policy} |\n')
        print(f'Of the {cookie_count} cookies: ')
        print(f'{httponly_count} cookies set HttpOnly')
        print(f'{secure_count} cookies set Secure')
        print(f'{samesite_count} cookies set SameSite')
        print(f'Of the {samesite_count} cookies that set SameSite, {strict_count} were Strict, {lax_count} were Lax, and {none_count} were None')
        print(f'{path_count} cookies set Path, and {path_not_slash_count} had values other than "/"')

if __name__ == "__main__":
    main()