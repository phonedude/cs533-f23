import pandas as pd

df = pd.read_csv('framable/report/iframe_report.csv')
df

filtered_df = df[df['Framable'] == 'Yes'].Site
filtered_df.to_csv('framable/report/framable_sites.csv', index =False)
print(filtered_df)