#!/bin/bash

sleep 30

DEPLOYMENT=$1

for name in ${!DEPLOYMENT[@]}
do
    
    STATUS=`kubectl get deployment ${DEPLOYMENT[$name]} | awk '{print $4}' |  sed -n '1d;p'`
    if [ $STATUS -eq 0 ]
        then 
            echo "Deployment ${DEPLOYMENT[$name]} is failed"
            exit 1
        else
            echo "${DEPLOYMENT[$name]} is successful"
    fi
done
