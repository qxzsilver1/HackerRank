# Enter your code here. Read input from STDIN. Print output to STDOUT

import numpy as np
from sklearn.linear_model import LinearRegression

F, N = map(int, input().split())
data = [list(map(float, input().split())) for i in range(N)]
data = np.array(data)

X_train, y_train = data[:, :-1], data[:, -1]

T = int(input())

X_test = [list(map(float, input().split())) for i in range(T)]
X_test = np.array(X_test)

model = LinearRegression()
model.fit(X_train, y_train)

predictions = model.predict(X_test)

for result in predictions:
    print(round(result, 2))
