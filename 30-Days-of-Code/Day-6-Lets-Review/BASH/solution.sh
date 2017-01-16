read num

for (( i=0; i<num; i++))
do
    firstHalf=""
    secondHalf=""
    
    read line
    
    for j in $(seq 1 ${#line})
    do
        if [ $[ (( j-1 )) % 2] = 0 ]; then
            firstHalf+=${line:j-1:1}
        else
            secondHalf+=${line:j-1:1}
        fi
    done
    
    echo "$firstHalf $secondHalf"
    
    firstHalf=""
    secondHalf=""
done
