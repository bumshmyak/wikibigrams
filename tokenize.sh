#!/bin/bash

for filename in ./extracted/AA/*
do
		cat $filename | python remove_extra.py >> wiki.words
done;
		
#tail -n +2 wiki.words > wiki.nextwords
#paste wiki.words wiki.nextwords | sort -S 1G | uniq -c | sort -S 1G -nr > result
#paste wiki.words wiki.nextwords > wiki.bigrams
