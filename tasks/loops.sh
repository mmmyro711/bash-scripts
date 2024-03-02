#!/bin/bash


# for name in "Myroslav" "Khusraf" "Esen" "Aiperi" "Yrys" "Fatima" "Guliza";
# do
#     if [ $name = "Fatima" ]; then
#         echo "You are Fatima"
#     else
#         echo "There is no Fatima"
#     fi
# done
#  for number in {1..60};
#  do 
#      if [ $number -lt 20 && $number -lt 60  ]; then
#         echo $number
#     fi
# done
for number in {1..100};
do
    if [ $number -le 20 ]; then 
        echo $number 
    fi

    if [[ $number -gt 40 && $number -le 60 ]]; then
        echo $number
    fi
done