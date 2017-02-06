def capitalize(string):
    return ' '.join([word.capitalize() for word in string.split(' ')])

if __name__ == '__main__':
    string = raw_input()
    capitalized_string = capitalize(string)
    print capitalized_string
