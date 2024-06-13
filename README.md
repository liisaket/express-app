## express app

Access with browser http://localhost:8080

3.10
previous version
```console
docker build . -t app

docker images
REPOSITORY              TAG       IMAGE ID       CREATED         SIZE
app                     latest    5311dd188b2b   7 seconds ago   1.1GB
```

new version with multi-stage build, remove unnecessary stuff, non-root user
```console
docker images
REPOSITORY   TAG       IMAGE ID       CREATED         SIZE
app          latest    8e15c81661f4   4 seconds ago   137MB
```