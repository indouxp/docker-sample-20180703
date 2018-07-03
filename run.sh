#!/bin/sh

set -eu

docker build . -t httpd-image

docker images

docker run --rm --name httpd-sample -p 8080:80 -dit httpd-image

docker ps


