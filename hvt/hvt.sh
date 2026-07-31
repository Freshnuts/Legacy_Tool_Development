#!/bin/bash

echo -en "\n[+] hvt.sh, HTTP Verb Tampering Script.\n"

function usage() {
if [[ "$#" -lt 2 ]]
then
    echo -en "usage: $0 <url> </path/file>\n"
    exit
fi
}
usage $1 $2

while read p;
do
	echo -en "\n[+] Attempting METHOD: $p\n"
    sleep 1
	curl -vX $p "$1" --max-time 3
	echo -en "\n======================================================================\n"
done < $2
exit
