#! /bin/bash -x

read -p:"Enter First Element: " a
read -p:"Enter Second Element: " b
read -p:"Enter Third Element: " c

declare -A result
arry=()

function operation(){

   result[0]=$(($a+$b*$c))
   result[1]=$(( ($a+$b) * $c))

	result[2]=$(($a*$b+$c))
   result[3]=$(($a*($b+$c)))

   result[4]=$(($c+$a/$b))
   result[5]=$((($c+$a) / $b))

	result[6]=$(($a%$b+$c))
   result[7]=$(($a % ($b+$c)))
}
operation $a $b $c

echo "Add-Multiplication"
echo "Result=${result[0]}"
echo -e "Result01=${result[1]}\n"

echo "Multiplication-Add"
echo "Result02=${result[2]}"
echo -e "Result03=${result[3]}\n"

echo "Add-Division"
echo "Result04=${result[4]}"
echo -e "Result05=${result[5]}\n"

echo "Module-Add"
echo "Result06=${result[6]}"
echo "Result07=${result[7]}"

echo ${result[@]}

len=${#result[@]}

for (( i=0; i<=$len; i++))
do
	for ((j=$i; j<=$len; j++))
	do
		if [[ ${result[$i]} -lt ${result[$j]} ]]
		then
			t=${result[$j]}
			result[$j]=${result[$i]}
			result[$i]=$t
		fi
	done
done

echo "Result in desecending order: ${result[@]}"
