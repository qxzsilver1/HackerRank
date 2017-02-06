read calc

#echo $calc | bc -l

#echo "scale = 3; `expr $calc`" | bc -l

#val=$(echo "($calc + 0.0005) / 1" | bc -l)
#echo $val

#echo "scale = 3; `expr $val`" | bc

#echo "scale = 3; $(echo "($calc + 0.0005) / 1")" | bc -l

printf "%.3f\n" $(echo "$calc" | bc -l)
