import os
import pandas as pd

#create html files
urls = open("KTHEN001@ODU.EDU", "r")

HTMLFile = open("frame.html", "r")
html_temp = HTMLFile.read()

for url in urls:
    url = url.strip("\n")
    filename = f"html_files/{url}.html"
    html = html_temp.replace("PlaceHolder", url)
    with open(filename, "w") as h:
        h.write(html)