#!/bin/bash

#./gradlew dependencies --configuration compile > deps.txt
#sed -n '/^[\+\\]---/p' deps.txt > tempDeps.txt
#sed -i 's/[\+\\]--- //g' tempDeps.txt
#sed -i 's/ (\*)//g' tempDeps.txt
#sed -i '/^com.softwaregroup*/d' tempDeps.txt
#cut -d ":" -f 2-3 tempDeps.txt > rootDeps.txt
#rm deps.txt tempDeps.txt

while read f; do
    find . -type f -iname ${f//[\-:\.]/_}.xml | head -n 1 | while read line; do
        echo "processing file '$line'"
    done
#    cp --parents -v $f $target
#    dirname $f    
done <rootDeps.txt 
