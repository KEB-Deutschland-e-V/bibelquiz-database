#!/bin/bash

podman build -t bibelquiz-database:latest . 

podman stop bibelquiz-database || :

podman rm bibelquiz-database || :

podman run \
--name bibelquiz-database \
--net bibelquiz \
--restart unless-stopped \
-p 3306:3306 \
-d bibelquiz-database:latest
