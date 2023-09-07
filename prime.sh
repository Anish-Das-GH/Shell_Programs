echo "Enter a no"
read num
for((i=2; i<=num/2; i++))
do
if [ $((num % i)) == 0 ]
then
    echo "NOT PRIME"
    exit
else
    echo prime
    exit
fi
done
