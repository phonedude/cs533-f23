import os
import pandas as pd

#create html files
urls = open("websites.txt", "r")

HTMLFile = open("code/frame_template.html", "r")
html_temp = HTMLFile.read()

for url in urls:
    url = url.strip("\n")
    filename = f"code/html_files/{url}.html"
    html = html_temp.replace("PlaceHolder", url)
    with open(filename, "w") as h:
        h.write(html)