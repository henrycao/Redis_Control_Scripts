#!/bin/sh
source /etc/profile


for port in 6379 6380 6381 6382
        do
        if [ -z $1 ]
                then
                redis-cli -p $port dbsize
        else
                redis-cli -p $port $1
        fi

done

