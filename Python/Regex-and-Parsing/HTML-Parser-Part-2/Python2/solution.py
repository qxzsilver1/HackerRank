from HTMLParser import HTMLParser

class MyHTMLParser(HTMLParser):
    def handle_comment(self, data):
        if '\n' in data:
            print '>>> Multi-line Comment'
        else:
            print '>>> Single-line Comment'
            
        print data
    
    def handle_data(self, data):
        if data == '\n': return
        print '>>> Data'
        print data

html = ""       
for i in range(int(raw_input())):
    html += raw_input().rstrip()
    html += '\n'
    
parser = MyHTMLParser()
parser.feed(html)
parser.close()
