import pandas as pd

df2 = pd.read_csv('iframe_report.csv')
df2

filtered_df2 = df2[df2['Framable'] == 'Yes'].Site
filtered_df2.to_csv('framable_sites.csv', index =False)
print(filtered_df2)
