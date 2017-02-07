# This template is based on the framework supplied for a similar challenge, in a Coursera Data Science course: https://www.coursera.org/course/datasci
# And the code supplied here: https://github.com/uwescience/datasci_course_materials/blob/master/assignment3/wordcount.py
import json
import sys
import string
from collections import OrderedDict
class MapReduce:
    def __init__(self):
        self.intermediate = OrderedDict()
        self.result = []

    def emitIntermediate(self, key, value):
        self.intermediate.setdefault(key, [])
        self.intermediate[key].append(value)

    def emit(self, value):
        self.result.append(value)

    def execute(self, data, mapper, reducer):
        for line in data:
            record = json.loads(line)
            mapper(record)

        for key in self.intermediate:
            reducer(key, self.intermediate[key])

        # jenc = json.JSONEncoder()
        for item in self.result:
            print item

mapReducer = MapReduce()

def mapper(record):
    key = record["key"]
    value = record["value"]
    # ADD THE REQUIRED LOGIC BELOW
    # You may need to add some lines for the mapper logic to work
    # At the end, you need to complete the emit intermediate step
    mapReducer.emitIntermediate(value, key)

def reducer(key, list_of_values):
    # ADD THE REQUIRED LOGIC BELOW
    # You may need to add some lines for the reducer logic to work
    # At the end, you need to complete the emit step
    flag = 0
    for item in list_of_values:
        flag |= (1 << item)
    if flag == 3:
        mapReducer.emit(key)


if __name__ == '__main__':
    R_str, C_str = sys.stdin.readline().split(' ')
    R = string.atoi(R_str)
    C = string.atoi(C_str)
    inputData = []
    counter = 0
    for line in sys.stdin:
        counter += 1
        inputData.append(json.dumps({"key":0 if counter<R else 1,"value":string.atoi(line)}))
        if counter >= R + C:
            break
    mapReducer.execute(inputData, mapper, reducer)
