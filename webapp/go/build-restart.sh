#!/bin/bash

GOPATH=/home/isucon/torb/webapp/go:/home/isucon/torb/webapp/go/vendor /home/isucon/local/go/bin/go build -v torb

systemctl restart torb.go
