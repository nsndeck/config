#!/bin/zsh

sourceFile=$1
target=$2

#for file in $(cat $sourceFile); do
#    echo $file
#done
#
while read f; do
   gcp --parents -v $f $target
#    dirname $f    
done <$sourceFile 
