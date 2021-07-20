#!/bin/bash

cat /var/log/nginx/access.log | alp ltsv --sort sum -r -q | notify_slack -snippet

pt-query-digest /var/log/mariadb/mariadb-slow.log --limit 10 | notify_slack -snippet
