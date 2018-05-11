#!/bin/bash

# ./get_list_accesion_number.sh <query word>
word=$1
grep "$word" taxonomy.txt | awk '{print $1}' | sort | uniq > query.list
numb=$( wc -l query.list )
echo "At now you generated a list of $numb species with your query word: $word"
