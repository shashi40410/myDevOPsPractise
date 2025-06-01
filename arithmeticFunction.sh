#!/bin/bash
addition(){
    total=$(($1 + $2))
    return $total
}
substrct(){
    final=$(($1 - $2))
    return $final
}
multiplication(){
    total=$(($1 * $2))
    return $total
}
divide(){
    total=$(($1 / $2))
    return $total
}
echo " please  enetr the arithemetic function name which you want to do."
printf " 1.add \
        \n2.substract \
        \n3.multiply \
        \n4. divide \n"
read -r input
if [ "$input" == "add" ]; then
     echo "enter first number "
     read var1
     echo "enter second number "
     read var2
     addition $var1 $var2 
     echo  Addition of two number is : $?
elif [ "$input" == "substract" ]; then
     echo "enter first number "
     read var1
     echo "enter second number "
     read var2
     substrct $var1 $var2 
     echo  Substarction of two number is : $?  
elif [ "$input" == "multiply" ]; then
     echo "enter first number "
     read var1
     echo "enter second number "
     read var2
     multiplication $var1 $var2 
     echo  Multiply of two number is : $?    
elif [ "$input" == "divide" ]; then
     echo "enter first number "
     read var1
     echo "enter second number "
     read var2
     divide $var1 $var2 
     echo  Divide of two number is : $?   
else echo "wrong input"
fi
   