#!/bin/bash
while true
do

#######################################################################################################
read -p "Enter a number for the multiplication table: " num

if [ $num -lt 0 ]; then

continue

else

read -p "Do you want a full table or a partial table? (Enter 'f' for full, 'p' for partial): " ans

fi


if [ $ans = "f" ]; then

echo "The full multiplication table for $num: "


for i in {1..10}
do
    total=$(($num * $i))
    echo "$num x $i = $total"
done




elif [ $ans = "p" ]; then

while true
do

read -p "Enter the starting number (between 1 and 10): " num1

read -p "Enter the ending number (between 1 and 10): " num2

if [ $num1 -gt $num2 ]; then
continue

else
break

fi
done

echo "The partial multiplication table for $num: "

for (( i=$num1; i<=$num2; i++));
do
    total=$(($num * $i))
    echo "$num x $i = $total"
done



elif [ $ans != "p" ] && [ $ans != "f" ]; then

continue

fi


#######################################################################################################
while true
do

read -p "Do you want to use the program again? (Enter 'y' for yes, 'n' for no): " ans1
if [ $ans1 = "y" ]; then
break

else
continue
fi
done

if [ $ans1 = "n" ]; then
echo "Thank you for using the program"
break
fi
#######################################################################################################



done