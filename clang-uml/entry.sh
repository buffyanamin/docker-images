#!/bin/sh
clang-uml -t 0 --query-driver .
if [ $? -ne 0 ]
then
	exit -1
fi
java -jar /plantuml.jar -nbthread auto -progress -tsvg puml/*.puml
