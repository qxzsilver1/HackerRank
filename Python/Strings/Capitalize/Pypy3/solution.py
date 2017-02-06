def capitalize(string):
    return ' '.join([word.capitalize() for word in string.split(' ')])

if __name__ == '__main__':
    string = input()
    capitalized_string = capitalize(string)
    print(capitalized_string)
