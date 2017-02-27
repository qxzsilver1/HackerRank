# Enter your code here. Read input from STDIN. Print output to STDOUT
from HTMLParser import HTMLParser

class parseHTML(HTMLParser):
    def handle_starttag(self, tag, attrs):
        print tag
        for attr in attrs:
            print "->", attr[0], ">", attr[1]

parser = parseHTML()
for _ in xrange(input()):
    parser.feed(raw_input())
