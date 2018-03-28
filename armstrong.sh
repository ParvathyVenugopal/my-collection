#!/bin/bash
echo "Enter number"
read n
c=$n
sum=0
while [ $c -ne 0 ]
do
digit=`expr $c % 10`
cube=`expr $digit \* $digit \* $digit`
sum=`expr $sum + $cube`
c=`expr $c / 10`
done
if [ $sum -ne $n ]
then 
	echo -e "Number is not Armstrong\n"
else
	echo -e "Number is Armstrong\n"
fi
