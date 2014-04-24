#!/bin/sh

ipset=$1 # ex: shadow-list

echo "create $ipset hash:ip family inet hashsize 1024 maxelem 65536"

while read ip; do
    echo add $ipset $ip
done
