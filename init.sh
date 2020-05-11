#!/bin/bash

CONTAINER_NAME=nginx-http-flv

docker run -d \
        -p 8080:80 \
        -p 1935:1935 \
        -v $PWD/www:/var/www \
        -v $PWD/nginx.conf:/etc/nginx/nginx.conf \
        -v $PWD/conf.d:/etc/nginx/conf.d \
        --name=$CONTAINER_NAME \
        mugennsou/nginx-http-flv

docker ps -a