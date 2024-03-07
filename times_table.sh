#!/bin/bash

#While true loops the whole script forever, till the user wants to exit out of the program
#also if the user enters anything other than a number for first question then the question will loop
#if the anything other than 'f' or 'p' is entered for second question the question will loop too
while true
do

read -p "Enter a number for the multiplication table: " num

if [ $num -lt 0 ]; then
continue

else
read -p "Do you want a full table or a partial table? (Enter 'f' for full, 'p' for partial): " ans
fi

if [ $ans = "f" ]; then
echo "The full multiplication table for $num: "

#if the user chooses to see the full multiplication table 
#the full multiplication table uses the list for loop, as the script needs to use set range of numbers
for i in {1..10}
do
    total=$(($num * $i))
    echo "$num x $i = $total"
done




elif [ $ans = "p" ]; then

#while true here will loop the questions if the user doesnt enter a whole number
while true
do

read -p "Enter the starting number (between 1 and 10): " num1
read -p "Enter the ending number (between 1 and 10): " num2

if [ $num1 -gt $num2 ]; then
continue

#break ends the while loop and moves the script onto the next part
else
break

fi
done




printf "The partial multiplication table for $num: "

#if the user uses to see partial table it uses c-style loop.
#it takes the users input for starting number and ending number and increases the starting number by one until it becomes equal to second number
for (( i=$num1; i<=$num2; i++));
do
    total=$(($num * $i))
    echo "$num x $i = $total"
done

elif [ $ans != "p" ] && [ $ans != "f" ]; then
continue

fi

#while true here will loop the questions if the user doesnt enter a 'y' or 'n'
while true
do

#if the user enters 'y' or 'n', then loop started in the line above will be broken out of and the script will move to the next if statement
read -p "Do you want to use the program again? (Enter 'y' for yes, 'n' for no): " ans1
if [ $ans1 != "n" ] && [ $ans1 != "y" ]; then
continue

else
break

fi
done


if [ $ans1 = "y" ]; then
continue

elif [ $ans1 = "n" ]; then
echo "Thank you for using the program"
break #this break will end the while loop started at the top of the program and will let the user end the whole program if they wanteds
fi

done