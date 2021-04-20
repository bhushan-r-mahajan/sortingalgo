echo "Welcome"

read -p "Enter 1st value=" a;
read -p "Enter 2st value=" b;
read -p "Enter 3st value=" c;
opration1=`awk "BEGIN {print $a+($b*$c)}"`
echo "The output for Opration-1 = "$opration1
opration2=`awk "BEGIN {print ($a*$b)+$c}"`
echo "The output for Opration-2 = "$opration2
opration3=`awk "BEGIN{print $c+($a/$b)}"`
echo "The output for Opration-3 = "$opration3

