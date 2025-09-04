#!/bin/bash


echo "Starting this script (hopefully it is executable with chmod a+x ./miner.sh)"

VARIABLE=some_string

echo $VARIABLE

## Prints all words in provided dictionary
## (you might want to find a bigger dictionary)
#for i in $(cat ../data/dictionary); do
 # printf \n $i
#done


## prints all numbers between 100 and 105
#for i in $(seq 100 105); do
 # printf \n $i
#doneF

for i in $(cat ../data/dictionary); do
	for j in $(seq 10 100); do
		hashval=$(echo -n "$j$i" | sha256sum | awk '{print $1}')

		if [[ $hashval == 000* ]]; then
			echo "Num is: $j, word is: $i Hash is: $hashval"
		fi
	done
done

