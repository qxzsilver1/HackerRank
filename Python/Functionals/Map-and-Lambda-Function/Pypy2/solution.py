cube = lambda x: x**3 # complete the lambda function 

def fibonacci(n):
    # return a list of fibonacci numbers
    fib = lambda n: n if n < 2 else fib(n - 1) + fib(n - 2)
    fibs = lambda n: map(fib, xrange(n))
    return fibs(n)
    
if __name__ == '__main__':
    n = int(raw_input())
    print map(cube, fibonacci(n))
