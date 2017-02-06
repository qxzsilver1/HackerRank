if __name__ == '__main__':
    n = int(raw_input())
    arr = map(int, raw_input().split())
    arr = sorted(list(set(arr)))
    print arr[-2]
