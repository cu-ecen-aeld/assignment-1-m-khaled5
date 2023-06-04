#!/bin/sh


writefile="$1"
writestr="$2"


if [ -z "$writefile" ]
then
exit 1
fi


if [ -z "$writestr" ]
then 
exit 1
fi

mkdir -p $(dirname "$writefile") 
touch "$writefile"

echo "$writestr" > "$writefile"





