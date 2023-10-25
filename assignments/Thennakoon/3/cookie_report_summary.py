import pandas as pd

df_cookie_report = pd.read_csv('cookie_report_updated.csv')

HTTPOnly = df_cookie_report['sum_http_only'].sum()
print('HTTPOnly =',HTTPOnly)

Secure = df_cookie_report['sum_secure'].sum()
print('Secure =',Secure)

Samesite= df_cookie_report['sum_same_site'].sum()
print('Samesite =',Samesite)

Samesite_none = df_cookie_report['same_site_none'].sum()
print('Samesite_none =',Samesite_none)

Samesite_lax = df_cookie_report['same_site_lax'].sum()
print('Samesite_lax =',Samesite_lax)

Samesite_strict = df_cookie_report['same_site_strict'].sum()
print('Samesite_strict =',Samesite_strict)

path = df_cookie_report['sum_set_path'].sum()
print('path =',path)

total_cookies = df_cookie_report['total_cookies'].sum()
print('Total number of cookies for 100 sites =',total_cookies)

min_cookies = df_cookie_report['total_cookies'].min()
print('Minimum number of cookies for 100 sites =',min_cookies)

max_cookies = df_cookie_report['total_cookies'].max()
print('Maximum number of cookies for 100 sites =',max_cookies)

mean_cookies = df_cookie_report['total_cookies'].mean()
print('Mean of total cookies for 100 sites =',mean_cookies)

median_cookies = df_cookie_report['total_cookies'].median()
print('Median of total cookies for 100 sites =',median_cookies)