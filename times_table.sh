#!/bin/bash

read -p "Enter a number for the multiplication table: " num

read -p "Do you want a full table or a partial table? (Enter 'f' for full, 'p' for partial): " ans

if [ $ans = "f" ]; then

echo "The full multiplication table for $num: "

for i in {1..10}
do
    total=$(($num * $i))
    echo "$num x $i = $total"
done

elif [ $ans = "p" ]; then

read -p "Enter the starting number (between 1 and 10): " num1

read -p "Enter the ending number (between 1 and 10): " num2

echo "The partial multiplication table for $num: "

for (( i=$num1; i<=$num2; i++));
do
    total=$(($num * $i))
    echo "$num x $i = $total"
done

fi


#Enter the starting number (between 1 and 10): 2

#Enter the ending number (between 1 and 10): 4

#The partial multiplication table for 3 from 2 to 4:
#3 x 2 = 6
#3 x 3 = 9
#3 x 4 = 12


#if [ $num -lt 0 ]; then
#    echo "Please enter a positive number."

#else


#fi
