#!/bin/bash
numOfDirectory=$(ls -la | awk '{print $1}' | grep 'd' | wc -l);
numOfSoftlink=$(ls -la | awk '{print $1}' | grep 'l' | wc -l);# + 1 from "Total"
numOfAll=$(ls -la | wc -l);
numOfFiles=$((numOfAll - numOfDirectory -numOfSoftlink));

function ifEqual () {
    if ! [[ $1 =~ ^[0-9]+$ ]];then
        echo "Give me an integer"
    elif [ $1 -lt $numOfFiles ]; then
        echo "Low! Guess Again:"
    elif [ $1 -gt $numOfFiles ]; then
        echo "High! Guess Again:"
    else 
        echo "Congratulations!!!"
        break
    fi
}

echo  "How many files are in the current directory?"
read guess
while : 
do
    ifEqual $guess
    read guess
done
