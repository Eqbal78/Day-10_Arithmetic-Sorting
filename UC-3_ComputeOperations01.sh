#! /bin/bash

read -p:"Enter First Element: " a
read -p:"Enter Second Element: " b
read -p:"Enter Third Element: " c

function operation(){

   result=$(($a+$b*$c))
   result01=$(( ($a+$b) * $c))

   result02=$(($a*$b+$c))
	result03=$(($a*($b+$c)))
}
operation $a $b $c

echo "Add-Multiplication"
echo "Result=$result"
echo -e "Result01=$result01\n"

echo "Multiplication-Add"
echo "Result02=$result02"
echo "Result03=$result03"
