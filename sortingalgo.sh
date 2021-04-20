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
echo "The output for Operation-3 = "$operation4

