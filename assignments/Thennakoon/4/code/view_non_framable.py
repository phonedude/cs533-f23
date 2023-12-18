import pandas as pd

df2 = pd.read_csv('iframe_report.csv')
df2

filtered_df4 = df2[df2['Framable'] == 'No'].Site
filtered_df4.to_csv('non_framble_sites.csv', index = False)
print(filtered_df4)