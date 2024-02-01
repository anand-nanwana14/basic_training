#!/bin/bash
# Date - 16-01-24
# Author - Anand Nanwana 

shopt -s expand_aliases # to export aliases we have to use this command
source /etc/bash.bashrc

cd ~
mkdir sample
cd sample
touch sample.txt
echo Hi! This is just a sample text file created using a shell script. >> sample.txt
cat sample.txt
grep -o 't' sample.txt | wc -l
chmod 777 sample.txt
echo Hi! This is just another sample text added to the file. >> sample.txt
chmod g=r sample.txt
chmod u=  sample.txt
cp sample.txt sample2.txt

# for loop to add random lines
for i in {1..1000}; 
do 
        echo "hello I am Anand $i" >> ~/sample/sample.txt; 
done

head -n 50 sample.txt
tail -n 50 sample.txt

touch prog1.txt prog2.txt program.txt code.txt info.txt
ls prog* 

alias list='ls prog*'
echo 'alias created' 
list