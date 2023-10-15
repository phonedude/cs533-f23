import pandas as pd

df_cookie_report = pd.read_csv('cookie_report_updated.csv')


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