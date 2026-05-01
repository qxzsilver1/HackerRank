# Enter your code here. Read input from STDIN. Print output to STDOUT
import numpy as np
import pandas as pd

N = int(input())
yyyy, mo, tmax, tmin = map(str, input().split())

data = []
missing = []
for i in range(N):
    line = input()
    year, month, t_min, t_max = line.split()
    if 'Missing' in t_min:
        t_min = np.nan
        missing.append((i,'t_min'))
    if 'Missing' in t_max:
        t_max = np.nan
        missing.append((i,'t_max'))
    data.append([float(t_min), float(t_max)])
    
df = pd.DataFrame(data, columns=['t_min','t_max'])
df = df.interpolate('cubic', limit_direction='both')

for i,col in missing:
    print(round(df.iloc[i][col],2))
