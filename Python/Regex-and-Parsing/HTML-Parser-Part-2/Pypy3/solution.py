# Enter your code here. Read input from STDIN. Print output to STDOUT
from html.parser import HTMLParser

class MyHTMLParser(HTMLParser):
    def handle_comment(self, data):
        print('>>> Multi-line Comment' if ('\n' in data) else '>>> Single-line Comment', data, sep='\n')
    def handle_data(self, data): 
        print('>>> Data', data, sep='\n')  if data.strip() else None  

html = ""       
for i in range(int(input())):
    html += input().rstrip()
    html += '\n'
    
parser = MyHTMLParser()
parser.feed(html)
parser.close()
