@echo off
cd %~dp0
set ABSOLUTE_PATH_PRIFIX=%~dp0
set CONTAINER_NAME="nginx-http-flv"

docker run -d^
        -p 8080:80^
        -p 1935:1935^
        -v %ABSOLUTE_PATH_PRIFIX%www:/var/www^
        -v %ABSOLUTE_PATH_PRIFIX%nginx.conf:/etc/nginx/nginx.conf^
        -v %ABSOLUTE_PATH_PRIFIX%conf.d:/etc/nginx/conf.d^
        --name=%CONTAINER_NAME%^
        mugennsou/nginx-http-flv

docker ps

docker logs -f %CONTAINER_NAME%
