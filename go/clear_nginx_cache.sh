#!/bin/sh

for SERVER in isucon1 isucon3
do
    ssh -t $SERVER "/home/isucon/webapp/go/nginx_cache.sh"
done
