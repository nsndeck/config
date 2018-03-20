#!/bin/bash

for config in `ls .ut*testrc`
do
    echo $config
    sed -i 's/user=ut5/user=postgres/g' $config
#    sed -i 's/viktorov/nikolov/g' $config
done
