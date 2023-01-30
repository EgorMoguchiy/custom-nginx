#!/bin/bash

docker build -t custom-nginx .
docker run --name custom-nginx -p 80:80 -d custom-nginx
