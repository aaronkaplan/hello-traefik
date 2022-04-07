# Hello world Traefik example with microservices

This repo contains two trivial microservices: `microservice/` and `microservice2`. They both return "hello world" as JSON answer `microservice2` also logs the requestor's Host header and requested URL.

How to build the containers? -> `make -images.sh`.

How to run them? 

```bash
docker-compose up -d 
```

# What does it show?

The `docker-compose.yml` file shows how to bind the microservices into traefik. Traefik learns about new microservices via labels in the `docker-compose.yml` file.
More info at: https://doc.traefik.io/traefik/user-guides/docker-compose/basic-example/

# How to test if it works?

If you take a look at the `docker-compose.yml` file, then you will see two different hostname (HTTP Hostname header) specified in the config for the two containers:

```
      - "traefik.http.routers.hello-traefik2.rule=Host(`hello-traefik.localhost`)"
      - "traefik.http.routers.hello-traefik2.rule=Host(`hello-traefik2.localhost`)"
```

Here, `hello-traefik.localhost` is the Host header. So, you can query the microservice like this from the outer server, which runs the containers:

```bash
curl --header 'Host:hello-traefik.localhost' http://localhost/
curl --header 'Host:hello-traefik2.localhost' http://localhost/
```

You should see microservice and microservice2's respective answers.


