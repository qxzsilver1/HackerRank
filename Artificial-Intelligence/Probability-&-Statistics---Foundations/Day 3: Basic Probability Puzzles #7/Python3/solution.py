# Enter your code here. Read input from STDIN. Print output to STDOUT

unit_A, defect_frac_A = 500, 0.005
unit_B, defect_frac_B = 1000, 0.008
unit_C, defect_frac_C = 2000, 0.01

defect_A_thousand = int(defect_frac_A * unit_A * 2)
defect_B_thousand = int(defect_frac_B * unit_B * 2)
defect_C_thousand = int(defect_frac_C * unit_C * 2)

denominator = defect_A_thousand + defect_B_thousand + defect_C_thousand

numerator = defect_A_thousand

print(f"{numerator}/{denominator}")
