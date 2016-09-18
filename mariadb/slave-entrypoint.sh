#!/bin/bash

/usr/local/bin/wait-for-it.sh mariadb-master:3306 -t 240
mysqld

