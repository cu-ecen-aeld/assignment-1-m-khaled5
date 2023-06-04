#!/bin/sh

filesdir="$1"
searchstr="$2"


if [ -z "$filesdir" ]
then 
exit 1
fi

if [ -z "$searchstr"  ]
then 
exit 1
fi



NUMBER_OF_FILES=$(ls "$filesdir" | wc -l)

NUMBER_OF_MATCHED_FILES=$(grep -r "$searchstr" "$filesdir" | wc -l)

#echo "The number of files are ${NUMBER_OF_FILES} and the number of matching files are ${NUMBER_OF_MATCHED_FILES}." wrong sentence

echo "The number of files are "$NUMBER_OF_FILES" and the number of matching lines are "$NUMBER_OF_MATCHED_FILES"."

