
read inputNumber

if [ $[$inputNumber % 2] = 1 ]; then
    echo "Weird"
elif [ $inputNumber -ge 6 ] && [ $inputNumber -le 20 ]; then
    echo "Weird"
else
    echo "Not Weird"
fi
