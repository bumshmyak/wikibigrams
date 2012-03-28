#!/bin/bash
NAME=BigramCount

mkdir -p ${NAME,,}_classes
javac -classpath ../hadoop-core-1.0.1.jar -d ${NAME,,}_classes ${NAME}.java
jar -cvf ${NAME,,}.jar -C ${NAME,,}_classes/ .