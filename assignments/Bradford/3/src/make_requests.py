#!/usr/bin/python3

import requests
from requests_toolbelt.utils import dump

def main():
    with open('CBRAD022@ODU.EDU', 'r') as input:
        uris = [uri.rstrip() for uri in  input]
    for uri in uris:
        with open(f'responses/{uri}', 'w') as response:
            try:
                head_request = requests.head(f"https://{uri}", allow_redirects=True, timeout=10, verify=False)
                response.write(dump.dump_response(head_request).decode('utf-8').split("\r\n\r\n")[1])
            except requests.exceptions.ReadTimeout:
                response.write("Request timed out")

if __name__ == "__main__":
    main()