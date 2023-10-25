#!/usr/bin/python3

import os

def main():
    uris = os.listdir('responses')
    for uri in uris:
        with open(f'filtered_responses/{uri}', 'w') as filtered_response:
            with open(f'responses/{uri}', 'r') as orig_response:
                lines = orig_response.readlines()
            for line in lines:
                if 'HTTP/1.1' in line:
                    filtered_response.write(line)
                if 'set-cookie' in line.lower():
                    filtered_response.write(line)


if __name__ == "__main__":
    main()