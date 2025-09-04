#!/bin/bash


echo "Starting this script (hopefully it is executable with chmod a+x ./miner.sh)"

VARIABLE=some_string

echo $VARIABLE

## Prepends words in provided dictionary with random numbers with double for loop
## Prints the hash only if it begins with at least three "0's"

for i in $(cat ../data/dictionary); do
	for j in $(seq 10 100); do

		nonceword=$(echo -n "$j$i")
		hashval=$(echo -n $nonceword | sha256sum | awk '{print $1}')

		## If hash has at least three "0's", place it in match variable
		match=$(echo "$hashval" | awk ' /^[0]{3,}/')

			## checks if the match variable is empty
			## If not, prints the hash and word with nonce
			if [ -n "$match" ]; then
    				echo "nonce word is: $nonceword  Hash: $match "
			fi
	done
done

