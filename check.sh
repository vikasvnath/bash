#!/bin/bash
ord() {
  LC_CTYPE=C printf '%d' "'$1"
}
test="$1"
sum=0
for (( i=0; i<${#test}; i++ )); do
  #if (${test:$i:1})
 value=$(ord ${test:$i:1})
 if [ "$value" -ge 65 ] &&  [ $value -le 69 ] || [ $value -ge 97 ] &&  [ $value -le 101 ]
 then
    sum=$(($sum+1))
 elif [ $value -ge 70 ] &&  [ $value -le 74 ] || [ $value -ge 102 ] &&  [ $value -le 106 ]
 then
   sum=$(($sum+2))
 elif [ $value -ge 75 ] &&  [ $value -le 79 ] || [ $value -ge 107 ] &&  [ $value -le 111 ]
 then
   sum=$(($sum+3))
 elif [ $value -ge 80 ] &&  [ $value -le 84 ] || [ $value -ge 112 ] &&  [ $value -le 116 ]
 then
   sum=$(($sum+4))
 elif [ $value -ge 85 ] &&  [ $value -le 89 ] || [ $value -ge 117 ] &&  [ $value -le 121 ]
 then
   sum=$(($sum+5))
 elif [ $value -eq 90 ] || [ $value -eq 122 ]
 then
   sum=$(($sum+6))
fi
done
echo $sum
