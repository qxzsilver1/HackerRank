# This template is based on the framework supplied for a similar challenge, in a Coursera Data Science course: https://www.coursera.org/course/datasci
# And the code supplied here: https://github.com/uwescience/datasci_course_materials/blob/master/assignment3/wordcount.py
import json
import sys
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

        jenc = json.JSONEncoder()
        for item in self.result:
            print item

mapReducer = MapReduce()
ns = None
nr = None

def mapper(record):
    global ns, nr
    key = record["key"]
    value = record["value"]
    if key == 1:
        ns, nr = map(int, value.split(' '))
    else:
        if key > ns+1:
            t = "r"
        else:
            t = "s"
        mapReducer.emitIntermediate(value.strip(), t)

def reducer(key, list_of_values):
    # ADD THE REQUIRED LOGIC BELOW
    # You may need to add some lines for the reducer logic to work
    # At the end, you need to complete the emit step
    if len(set(list_of_values)) > 1:
        mapReducer.emit(key)

if __name__ == '__main__':
    inputData = []
    counter = 0
    for line in sys.stdin:
        counter += 1
        inputData.append(json.dumps({"key":counter,"value":line}))
    mapReducer.execute(inputData, mapper, reducer)
