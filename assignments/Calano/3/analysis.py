import os
from pathlib import Path

sites = {}

non404Count = 0
cookieCounts = []
nPath = 0
nSecureFlag = 0
nHttpOnlyFlag = 0
nSameSiteStrict = 0
nSameSiteLax = 0
nSameSiteNone = 0
nSameSiteUnknown = 0
nonRootPaths = []

for fname in sorted(os.listdir('files')):
    with open(Path(os.getcwd(), 'files', fname), 'r') as f:
        lines = f.read().splitlines()
        segments = []
        segment = []
        for line in lines:
            line = line.strip()
            if len(line) == 0:
                segments.append(segment)
                segment = []
            else:
                segment.append(line)
        
        s = segments[-1]
        statusCode = s[0].split(' ')[1]
        if statusCode != '200': non404Count += 1
        
        sites[fname] = {}
        sites[fname]['status'] = statusCode
        sites[fname]['cookies'] = []
        for h in s[1:]:
            if h.lower().startswith('set-cookie: '):                
                cookieData = h[len('set-cookie: '):].split(';')

                secureFlag = '❌'
                httpOnlyFlag = '❌'
                pathValue = '❌'
                sameSitePolicy = '❌'
                for c in cookieData:
                    c = c.strip()
                    if c.lower() == 'secure':
                        secureFlag = "✔️"
                        nSecureFlag += 1
                    if c.lower() == 'httponly':
                        httpOnlyFlag = "✔️"
                        nHttpOnlyFlag += 1
                    if c.lower().startswith('samesite'):
                        sameSitePolicy = c.split('=')[1].strip().capitalize()
                        if sameSitePolicy == 'Strict':
                            nSameSiteStrict += 1
                        elif sameSitePolicy == 'Lax':
                            nSameSiteLax += 1
                        elif sameSitePolicy == 'None':
                            nSameSiteNone += 1
                        else: nSameSiteUnknown += 1
                    if c.lower().startswith('path'):
                        pathValue = c.split('=')[1].strip()
                        nPath += 1
                        if pathValue != '/': nonRootPaths.append((fname, pathValue))
                
                cookie = {
                    'Secure': secureFlag,
                    'HttpOnly': httpOnlyFlag,
                    'Path': pathValue,
                    'SameSite': sameSitePolicy
                }
                sites[fname]['cookies'].append(cookie)
        cookieCounts.append(len(sites[fname]['cookies']))

cookieCounts = sorted(cookieCounts)
l = len(cookieCounts) // 2
if l % 2 == 0:
    medianCookies = (cookieCounts[l] + cookieCounts[l-1]) / 2
else:
    medianCookies = cookieCounts[l]
mostCookies = max(cookieCounts)
leastCookies = min(cookieCounts)
meanCookies = sum(cookieCounts) / len(cookieCounts)
modeCookies = max(set(cookieCounts), key=cookieCounts.count)

cookieStatsString = f'| Total | Least | Most | Mean | Median | Mode |\n| :---: | :---: | :---: | :---: | :---: | :---: |\n| {sum(cookieCounts)} | {leastCookies} | {mostCookies} | {meanCookies} | {medianCookies} | {modeCookies} |'

cookieCountString = f'| Secure | HttpOnly | Path | SameSite (Strict) | SameSite (Lax) | SameSite (None) |\n| :---: | :---: | :---: | :---: | :---: | :---: |\n| {nSecureFlag} | {nHttpOnlyFlag} | {nPath} | {nSameSiteStrict} | {nSameSiteLax} | {nSameSiteNone} |'

cookieTableHeader = f'| Site | Status | Cookies | Secure | HttpOnly | Path | SameSite |\n| :--- | :---: | :---: | :---: | :---: | :---: | ---: |\n'
tableRowStrings = []
for site in sites:
    siteData = sites[site]
    if len(siteData['cookies']) > 0:
        tableRowStrings.append(f'| {site} | {siteData["status"]} | 🍪 {len(siteData["cookies"])} | | | | |')
        for i, cookie in enumerate(siteData['cookies']):
            if i == 0:
                tableRowStrings.append(f'| | | | {cookie["Secure"]} | {cookie["HttpOnly"]} | {cookie["Path"]} | {cookie["SameSite"]} |')
            else:
                tableRowStrings.append(f'| | | | {cookie["Secure"]} | {cookie["HttpOnly"]} | {cookie["Path"]} | {cookie["SameSite"]} |')
    else:
        tableRowStrings.append(f'| {site} | {siteData["status"]} | 🍪 0 | - | - | - | - |')

errorRowStrings = []
for fname in sorted(os.listdir('errors')):
    with open(Path(os.getcwd(), 'errors', fname), 'r') as f:
        error = f.readline().strip()
        error = error[len('curl: ('):]
        eCode = error.split(')')[0]
        eText = error.split(')')[1]
        errorRowStrings.append(f'| {fname} | {eCode} | {eText} |')


with open('report.md', 'w') as f:
    f.write(f'# Report\n')
    f.write('\n')
    
    f.write(f'## Errors\n')
    f.write('\n')
    f.write('| Site | Error Code | Error Message |\n| :--- | :---: | ---: |\n')
    for s in errorRowStrings:
        f.write(s + '\n')
    f.write('\n')

    f.write(f'## Cookie Statistics\n')
    f.write('\n')
    f.write(cookieStatsString + '\n')
    f.write('\n')

    f.write(f'## Cookie Breakdown\n')
    f.write('\n')
    f.write(cookieCountString + '\n')
    f.write('\n')
    
    f.write(f'### Non-root Paths\n')
    f.write('\n')
    f.write('| Site | Path |\n| :--- | ---: |\n')
    for s in nonRootPaths:
        f.write(f'| {s[0]} | {s[1]} |\n')
    f.write('\n')

    f.write(f'## Site Details\n')
    f.write('\n')
    f.write('Non-404 Sites: ' + str(non404Count) + '\n')
    f.write(cookieTableHeader)
    for s in tableRowStrings:
        f.write(s + '\n')
    f.write('\n')
