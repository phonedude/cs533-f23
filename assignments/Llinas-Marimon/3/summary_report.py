import pandas as pd 

# read data
data = pd.read_csv('website_report.csv')

total_cookies = data['total_cookies'].sum()
print('Total number of cookies:',total_cookies)

print('----------------------------------------------')
print('Cookies with following attributes:')
print('----------------------------------------------')
HTTPOnly = data['sum_http_only'].sum()
print('HTTPOnly:',HTTPOnly)

Secure = data['sum_secure'].sum()
print('Secure:',Secure)

Samesite= data['sum_same_site'].sum()
print('Samesite:',Samesite)

Samesite_none = data['same_site_none'].sum()
print('Samesite_none:',Samesite_none)

Samesite_lax = data['same_site_lax'].sum()
print('Samesite_lax:',Samesite_lax)

Samesite_strict = data['same_site_strict'].sum()
print('Samesite_strict:',Samesite_strict)

path = data['sum_set_path'].sum()
print('Path:',path)
print('----------------------------------------------')
print('Descriptive information')
print('----------------------------------------------')

min_cookies = data['total_cookies'].min()
print('Minimum number of cookies:',min_cookies)

max_cookies = data['total_cookies'].max()
print('Maximum number of cookies:',max_cookies)

mean_cookies = data['total_cookies'].mean()
print('Mean of total cookies:',mean_cookies)

median_cookies = data['total_cookies'].median()
print('Median of total cookies:',median_cookies)
print('----------------------------------------------')