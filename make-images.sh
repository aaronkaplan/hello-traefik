#!/bin/sh

docker build -f Dockerfile  -t hello-traefik:0.1 .
docker build -f Dockerfile2  -t hello-traefik2:0.1 .
