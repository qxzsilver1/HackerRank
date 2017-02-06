read num

summer=0

for i in $(eval echo "{1..$num}")
do
    read val
    summer=$((summer + $val))
done

printf "%.3f\n" $(echo "$summer / $num" | bc -l)
