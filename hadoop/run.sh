#!/bin/bash

NAME=BigramCount

../bin/hadoop fs -rmr output/ input/
../bin/hadoop fs -put input/ input/
../bin/hadoop jar ${NAME,,}.jar org.myorg.${NAME} input/ output/
rm -rf output/*
../bin/hadoop fs -copyToLocal output/part* output/
