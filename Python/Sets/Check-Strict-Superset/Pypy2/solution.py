# Enter your code here. Read input from STDIN. Print output to STDOUT
A = set(raw_input().split())
is_strict_superset = True
for i in range(int(raw_input())): 
    B = set(raw_input().split())
    is_strict_superset = is_strict_superset and (A.intersection(B) == B and len(A) > len(B))
    
print is_strict_superset
