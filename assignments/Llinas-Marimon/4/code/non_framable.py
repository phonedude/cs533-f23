import pandas as pd

df = pd.read_csv('framable/report/iframe_report.csv')
df

filtered_df = df[df['Framable'] == 'No'].drop(columns=['Framable'])

filtered_df.to_csv('framable/report/non_framble_sites.csv', index = False)
print(filtered_df)