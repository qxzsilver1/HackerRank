#!/bin/python3

import math
import os
import random
import re
import sys

import numpy as np
from sklearn.preprocessing import PolynomialFeatures
from sklearn.linear_model import LinearRegression
    
def predict_hours(testX):
    with open('trainingdata.txt','r') as file:
        raw_data = file.read()
        trainingdata = [
            [float(x) for x in line.split(sep=',')] for line in raw_data.strip().split(sep='\n')
            ]
            
    train_arr = np.array(trainingdata)
    X = train_arr[:,0]
    y = train_arr[:,1]
    
    # since duration is capped at 8, charging beyond a certain threshold does not increase duration.
    # therefore i find that threshold here, and filter out the ones exceeding it.
    # this prevents fitting in noise.
    threshold = min(X[y == 8.0])
    
    # also, can just print 8.0 when the input is above this threshold.
    if testX > threshold:
        print(8.00)
    else:
        mask = X < threshold
        X = X[mask]
        y = y[mask]
        poly_transformer = PolynomialFeatures()
        poly_X = poly_transformer.fit_transform(X.reshape(-1,1))
        lin_regr = LinearRegression()
        lin_regr.fit(poly_X,y)
        
        input_arr = np.array([[testX]])
        poly_input = poly_transformer.transform(input_arr)
        
        print(round(lin_regr.predict(poly_input)[0],2))


if __name__ == '__main__':
    timeCharged = float(input().strip())
    predict_hours(timeCharged)
