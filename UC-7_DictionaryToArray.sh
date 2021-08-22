#! /bin/bash -x

read -p:"Enter First Element: " a
read -p:"Enter Second Element: " b
read -p:"Enter Third Element: " c

declare -A result
arry=()

function operation(){

   result[00]=$(($a+$b*$c))
   result[01]=$(( ($a+$b) * $c))

	result[02]=$(($a*$b+$c))
   result[03]=$(($a*($b+$c)))

   result[04]=$(($c+$a/$b))
   result[05]=$((($c+$a) / $b))

	result[06]=$(($a%$b+$c))
   result[07]=$(($a % ($b+$c)))
}
operation $a $b $c

echo "Add-Multiplication"
echo "Result=${result[00]}"
echo -e "Result01=${result[01]}\n"

echo "Multiplication-Add"
echo "Result02=${result[02]}"
echo -e "Result03=${result[03]}\n"

echo "Add-Division"
echo "Result04=${result[04]}"
echo -e "Result05=${result[05]}\n"

echo "Module-Add"
echo "Result06=${result[06]}"
echo "Result07=${result[07]}"

echo "Dictionary result: ${result[@]}"

arry+=${result[@]}
echo "Array storing result: ${arry[@]}"
