#!/bin/bash -x
RandomCheck=$((RANDOM%2))
WIN=1
if [ $RandomCheck -eq $WIN ]
then
        echo Gambler Wins
else
        echo Gambler looses
fi

