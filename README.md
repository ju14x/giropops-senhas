## giropops-senhas

- to run locally with Dockerfiles only (v1.0):

```sh
docker run -d --name redis-stack-server -p 6379:6379 redis/redis-stack-server:latest
```

```sh
# optional: the image is already on dockerhub. only put here for notes
docker build -t jlxdocky/linuxtips-giropops-senhas:1.0 .
```

- check your default network to find the redis container IPv4Address:

```sh
# usually 172.17.0.2, could be 172.17.0.3 if you have more than one/two containers running
docker network inspect bridge
```

```sh
docker run -d -p 5000:5000 -e REDIS_HOST="your-redis-ip-here" --name giropops-senhas jlxdocky/linuxtips-giropops-senhas:1.0
```

