read c

if [ "${c,,}" == "y" ]; then
echo "YES"
elif [ "${c,,}" == "n" ]; then
echo "NO"
fi
