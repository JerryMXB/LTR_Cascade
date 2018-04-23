#!/bin/bash


read -p "Enter the number of threads to generate doc unigram features:`echo $'\n> '`" NThreads
cd split && split -l$((`wc -l < ../stage0.run`/${NThreads})) -d ../stage0.run
cd ../
for i in $( ls split )
do
../../../../external/local/bin/fgtrain gov2-all-kstem.qry split/$i gov2_indri > split/gov2_temp${i}.csv &
done
wait

cat split/gov2_temp* > gov2_docfeat.csv
