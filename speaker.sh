#!/bin/bash

message=$1
filename=$2
voice=$3

if [[ -z "$message" ]];
then
read -p "Enter the messagage to speak: " message
fi

if [[ -z "$filename" ]];
then
read -p "Enter the filename of the output file (in current dir): " filename
fi

if [[ -z "$voice" ]];
then
read -p "Enter the voice: " voice
fi

say -v $voice -o $filename $message
