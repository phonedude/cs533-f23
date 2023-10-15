import pandas as pd
import numpy as np
import os 
import glob


#read curloutput files in the folder cookie_details_100_sites

mydir = "cookie_details_100_sites"

file_list = glob.glob(mydir + "/*.txt") 

#create coolie_report.csv

data = []

for i,file in enumerate(file_list):
    dict_ = {'url':'',
         'status_code':'',
         'total_cookies':'',
         'sum_http_only':'',
         'sum_secure':'',
         'sum_same_site':'',
         'sum_set_path':'',
         'http_only':'',
         'secure':'',
         'same_site':'',
         'path':'',
         'same_site_none':'',
         'same_site_lax':'',
         'same_site_strict':''  }
    
    http_only_count = 0
    secure_count = 0
    same_site_count = 0
    path_count = 0
    same_site_none_count = 0
    same_site_lax_count = 0
    same_site_strict_count = 0
    cookie_count = 0
    cookie_count_ = 1
    
    http_data = []
    secure_data = []
    same_site_data = []
    path_data = []
    
    with open(file) as f:
        
        http_only = 'n'
        secure = 'n'
        same_site = 'n'
        same_site_val = []
        path ='n'
        path_val = 'n'
        status_code = 0
        
        url = file.split("\\",1)[1][:-4]
        
        dict_['url'] = url
        
        print(url)
        text = f.read()
        
        if "HTTP/" in text:
            

            status_code_line_initial = text[text.rindex("HTTP/"):]
            status_code_line = status_code_line_initial[:status_code_line_initial.index("\n")]
    
            status_code = status_code_line.split(" ")[1]
            

            dict_['status_code'] = status_code
            print('new status_code',status_code)
       
        content_list = text.split("\n")
        
        for line in content_list:
            if "set-cookie" in line.lower():
                cookie_key = f"Cookie_{cookie_count_}"
                
                cookie_count +=1
                cookie_count_ +=1
                cookie = line
                print(cookie)
                
                if "HttpOnly".lower() in cookie.lower():
                    http_only = 'y'
                    
                    http_data.append({cookie_key:'Y'}) 

                    
                    dict_['http_only'] = http_only
                    http_only_count+=1
                    print("HTTpOnly=",http_only)
                else:
                    http_data.append({cookie_key:'N'}) 

                
                if "Secure".lower() in cookie.lower():
                    secure = 'y'
                    secure_count += 1 
                    dict_['secure'] = secure
                    print("Secure=",secure)
                    
                    secure_data.append({cookie_key:'Yes'})
                else:
                    secure_data.append({cookie_key:'No'}) 
                    
                    
                if "SameSite".lower() in cookie.lower():
                    same_site = 'y'
                    same_site_val = 'N_A'

                    
                    same_site_dummy_list = cookie.split(';')
                    
                    for val in same_site_dummy_list:
                        if 'SameSite'.lower() in val.lower():
                            same_site_val = val.replace("SameSite=",'')
                            break
                    
                    same_site_count += 1
                    
                    same_site_data.append({cookie_key:same_site_val})
                    
                    dict_['same_site'] = same_site_val
                    print("Samesite=",same_site)
                    print(same_site_val)
                else:
                    same_site_data.append({cookie_key:'N_A'})
                    
                if "path" in cookie.lower():
                    path = 'y'
                    path_val = cookie[cookie.lower().find("path"):cookie.lower().find("path")+7]
                    
                    path_count +=1

                    dict_['path'] = path_val
                    print("Path=",path)
                    print(path_val)
                
                if "None".lower() in cookie.lower():

                    same_site_none_count += 1 

                if "lax".lower() in cookie.lower():
                    
                    same_site_lax_count += 1 
                
                if "strict".lower() in cookie.lower():
                    
                    same_site_strict_count += 1 
    
    # summations
    dict_['sum_http_only'] = http_only_count
    dict_['sum_secure'] = secure_count
    dict_['sum_same_site'] = same_site_count
    dict_['sum_set_path'] = path_count
    dict_['total_cookies'] = cookie_count
    dict_['same_site_none'] = same_site_none_count
    dict_['same_site_lax'] = same_site_lax_count
    dict_['same_site_strict'] = same_site_strict_count
    dict_['http_only'] = http_data
    dict_['secure'] = secure_data
    dict_['same_site'] = same_site_data
    dict_['secure'] = secure_data

    data.append(dict_)
        
    print("\n\n\n\n") 
    
    if i == 100:
        break
    
df_test = pd.DataFrame.from_records(data)

df_test.to_csv('cookie_report.csv',index=False)

