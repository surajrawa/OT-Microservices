#!/bin/bash

IMAGES=$1

MAX_ALLOWED_IMAGE_SIZE=9000000000

for name in ${!IMAGES[@]}
do
    IMAGE_SIZE=`docker  inspect -f "{{ .Size }}"  ${IMAGES[$name]}`
    echo "CHECKING SIZE OF ${IMAGES[$name]}"
    if [ $IMAGE_SIZE -gt $MAX_ALLOWED_IMAGE_SIZE ]
        then 
            # echo ${IMAGES[$name]} $IMAGE_SIZE >> file1.txt
            echo "Warning: ${IMAGES[$name]} size  is greater than the expected limit"
        else
            echo "${IMAGES[$name]} size is in limits"
    fi
done
