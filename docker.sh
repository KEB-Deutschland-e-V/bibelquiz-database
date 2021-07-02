#!/bin/bash

docker build -t bibelquiz/database:latest . 

docker stop bibelquiz-database || :

docker rm bibelquiz-database || :

docker run \
--name bibelquiz-database \
--restart unless-stopped \
-p 3306:3306 \
-d bibelquiz/database:latest
