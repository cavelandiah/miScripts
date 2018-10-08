#!/bin/bash

touch cm_to_clean.list
FILES=*.seed_tree
for f in $FILES
do
	./obtain_RFAM-specie-on-trees.pl $f >> cm_to_clean.list
done
