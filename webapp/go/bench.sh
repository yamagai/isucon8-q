#!/bin/bash

rm -f /var/log/nginx/access.log
systemctl restart nginx

cp /dev/null /var/log/mariadb/mariadb-slow.log

/home/isucon/torb/db/init.sh

/home/isucon/torb/bench/bin/bench -data=/home/isucon/torb/bench/data -output=result.json
