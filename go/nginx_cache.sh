#!/bin/sh

sudo -H rm -rf /tmp/nginx/cache
sudo -H /etc/init.d/nginx restart
