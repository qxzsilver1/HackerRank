# Enter your code here. Read input from STDIN. Print output to STDOUT
prob_not_read_morning = 0.5
prob_not_read_evening = 0.4

prob_read_both = 0.2

prob_read_morning = 1 - prob_not_read_morning
prob_read_evening = 1 - prob_not_read_evening

prob_read_morning_or_evening = prob_read_morning + prob_read_evening - prob_read_both

numerator = int(prob_read_morning_or_evening * 10)
denominator = 10

print(f"{numerator}/{denominator}")
