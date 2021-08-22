#! /bin/bash

read -p:"Enter First Element: " a
read -p:"Enter Second Element: " b
read -p:"Enter Third Element: " c

function operation(){

   result=$(($a+$b*$c))
   result01=$(( ($a+$b) * $c))

	result02=$(($a*$b+$c))
   result03=$(($a*($b+$c)))

   result04=$(($c+$a/$b))
   result05=$((($c+$a) / $b))

	result06=$(($a%$b+$c))
   result07=$(($a % ($b+$c)))
}
operation $a $b $c

echo "Add-Multiplication"
echo "Result=$result"
echo -e "Result01=$result01\n"

echo "Multiplication-Add"
echo "Result02=$result02"
echo -e "Result03=$result03\n"

echo "Add-Division"
echo "Result04=$result04"
echo "Result05=$result05

echo "Module-Add"
echo "Result06=$result06"
echo "Result07=$result07
