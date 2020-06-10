#!/bin/bash
maxProfit=50;
maxLoss=-50;
#Pocket=0;
Bet=1;
win=1;
for (( i=1 ; i<=20 ; i++ ))
do
        Pocket=0;
        while [[ $Pocket -lt $maxProfit && $Pocket -gt $maxLoss ]]
        do
        BetCheck=$((RANDOM%2))
        if [ $win -eq $BetCheck ]
        then
                Pocket=$(($Pocket+$Bet))
        else
                Pocket=$(($Pocket-$Bet))
        fi
        done
        echo $Pocket
done



