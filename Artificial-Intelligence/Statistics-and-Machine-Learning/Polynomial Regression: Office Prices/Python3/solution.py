# Enter your code here. Read input from STDIN. Print output to STDOUT
import sys
from sklearn.linear_model import LinearRegression
from sklearn.preprocessing import PolynomialFeatures

input_data = sys.stdin.read().splitlines()

F, N = map(int, input_data[0].split())

X_train = []
Y_train = []

for i in range(1, N+1):
    *features, price = map(float, input_data[i].split())
    X_train.append(features)
    Y_train.append(price)

T = int(input_data[N+1])

X_test = []

for i in range(N+2 ,N+2+T):
    features= list(map(float, input_data[i].split()))
    X_test.append(features)


polyFeatures = PolynomialFeatures(degree=3)
X_train_poly = polyFeatures.fit_transform(X_train)
X_test_poly = polyFeatures.transform(X_test)

model = LinearRegression()
model.fit(X_train_poly, Y_train)

predictions = model.predict(X_test_poly)

for price in predictions:
    print(f"{price:.2f}")

