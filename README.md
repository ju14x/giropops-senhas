## giropops-senhas

to run locally with Dockerfiles only (v1.0):

```sh
docker run -d --name redis-stack-server -p 6379:6379 redis/redis-stack-server:latest
```

```sh
docker build --build-arg REDIS_HOST=172.17.0.2 -t jlxdocky/linuxtips-giropops-senhas:1.0 .
```

```sh
docker run -d -p 5000:5000 --name giropops-senhas jlxdocky/linuxtips-giropops-senhas:1.0
```

