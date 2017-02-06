awk '{
total = ($2 + $3 + $4)/3
if (total >= 50 && total< 60)
    print $0, ": C"
else if (total >= 60 && total < 80)
    print $0, ": B"
else if (total >= 80)
    print $0, ": A" 
else 
    print $0, ": FAIL" }'
