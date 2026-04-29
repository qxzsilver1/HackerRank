# Enter your code here. Read input from STDIN. Print output to STDOUT

curr_data = 90.25 / 100
m = 0.675
sd = 0.065

z_score = (curr_data - m)/sd
# print(z_score)

print(format(z_score, '.2f'))
