#!/bin/bash

rm -f /var/log/nginx/access.log
systemctl restart nginx

cp /dev/null /var/log/mariadb/mariadb-slow.log

/home/isucon/torb/bench/bin/bench -data=/home/isucon/torb/bench/data -remotes=160.251.79.225 -output=result.json
