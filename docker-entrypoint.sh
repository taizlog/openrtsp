#!/bin/sh

PREFIX=$2
DURATION=$1
URL=$3

if [ -n "$4" ]
then
  BUFFER_SIZE=$4
else  
  BUFFER_SIZE=10000000 # Default
fi  

echo "openRTSP -c -D 1 -B ${BUFFER_SIZE} -b ${BUFFER_SIZE}  -P ${DURATION} -F "${PREFIX}_$(date '+%s')_" -V ${URL}"
openRTSP -c -D 1 -B ${BUFFER_SIZE} -b ${BUFFER_SIZE}  -P ${DURATION} -F "${PREFIX}_$(date '+%s')_" -V ${URL}
