from html.parser import HTMLParser

class parseHTML(HTMLParser):
    def handle_starttag(self, tag, attrs):
        print(tag)
        self.value(attrs)
        
    def value(self, attrs = None):
        if attrs:
            [print('->', attr, '>', val) for attr, val, in attrs]

ss = '\n'.join([input() for x in range(int(input()))])
parser = parseHTML()
parser.feed(ss)
