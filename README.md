# Hello world Traefik example with microservices

This repo contains two trivial microservices: `microservice/` and `microservice2`. They both return "hello world" as JSON answer `microservice2` also logs the requestor's Host header and requested URL.

How to build the containers? -> `make -images.sh`.

How to run them? -> `docker-compose up -d `

# What does it show?

The `docker-compose.yml` file shows how to bind the microservices into traefik. Traefik learns about new microservices via labels in the `docker-compose.yml` file.
More info at: https://doc.traefik.io/traefik/user-guides/docker-compose/basic-example/

