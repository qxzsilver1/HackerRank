import itertools

[K, M] = [int(i) for i in input().split(' ')]
lists = [[int(i) for i in input().split(' ')[1:]] for _ in range(K)]
list_l = [len(l) for l in lists]

print(max([sum(lists[n_list][tu[n_list]]**2 for n_list in range(len(lists)))%M for \
           tu in itertools.product(*[range(l) for l in list_l])]))
