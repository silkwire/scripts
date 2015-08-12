#/bin/bash

if [ $1 == ""] 
then
echo "./pingscript.sh [network]"
echo "./pingscript.sh 192.168.1"
else
for x in `seq 1 254`; do
ping -c 1 $1.$x | grep "64 bytes" | cut -d" " -f4 | sed '/.$//'
done
fi

