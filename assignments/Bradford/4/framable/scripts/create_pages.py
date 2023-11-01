#!/usr/bin/python3

def main():
    with open("CBRAD022@ODU.EDU", 'r') as url_file:
        urls = [url.rstrip() for url in  url_file]
    for url in urls:
        with open(f'html/{url}.html', 'w') as webpage:
            webpage.write(f'<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8" /><title>framable</title></head><body><iframe src="https://{url}" title="description" height="600" width="600"></iframe> </body></html')
if __name__ == "__main__":
    main()