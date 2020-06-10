#!/bin/bash -x
WIN=1
STAKE=100
BET=1
MAX_PROFIT_PER_DAY=50
MAX_LOSS_PER_DAY=-50
pocket=0
while [[ $pocket -lt $MAX_PROFIT_PER_DAY && $pocket -gt $MAX_LOSS_PER_DAY ]]
do
        RandomCheck=$((RANDOM%2))
        if [ $WIN -eq $betCheck ]
        then
                pocket=$(($pocket+$BET))
        else
                pocket=$(($pocket-$BET))
        fi
done

echo "$pocket"
echo "pocket ammout =$(($STAKE+$pocket))"

