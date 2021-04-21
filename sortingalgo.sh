#!/bin/bash -x

echo "Welcome"

read -p "Enter 1st value=" a;
read -p "Enter 2st value=" b;
read -p "Enter 3st value=" c;
operation1=`awk "BEGIN {print $a+($b*$c)}"`
echo "The output for Opration-1 = "$operation1
operation2=`awk "BEGIN {print ($a*$b)+$c}"`
echo "The output for Opration-2 = "$operation2
operation3=`awk "BEGIN{print $c+($a/$b)}"`
echo "The output for Opration-3 = "$operation3
operation4=`awk "BEGIN{print $a%($b+$c)}"`
echo "The output for Operation-4 = "$operation4

declare -A operationsDict

operationsDict[operation1]=$operation1
operationsDict[operation2]=$operation2
operationsDict[operation3]=$operation3
operationsDict[operation4]=$operation4

echo "Dictionary=[${operationsDict[@]}]"
echo "Dictionary Keys=[${!operationsDict[@]}]"

operationsArray=( $operation1 $operation2 $operation3 $operation4 )

echo "Array=[ ${operationsArray[@]} ]"

printf '%s\n' "${operationsArray[@]}" | sort -n
