#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'gradingStudents' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY grades as parameter.
#

def gradeRounder(grade):
    if grade < 38 or grade % 5 == 0:
        return grade
    
    rounded_grade = grade
    diff = 0
    
    while not rounded_grade % 5 == 0:
        diff += 1
        rounded_grade += 1
    
    return rounded_grade if diff < 3 else grade

def gradingStudents(grades):
    # Write your code here
    return [gradeRounder(x) for x in grades]

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    grades_count = int(input().strip())

    grades = []

    for _ in range(grades_count):
        grades_item = int(input().strip())
        grades.append(grades_item)

    result = gradingStudents(grades)

    fptr.write('\n'.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
