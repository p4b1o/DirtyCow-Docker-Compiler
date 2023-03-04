# DirtyCow-Docker-Compiler
Using Docker for compiling DirtyCow or any other exploit for a specific version of Linux, especially 32-bit, can be a useful approach.

## Example for Debian 9 Strech 32 bit

> Compile for 32 Bit 

```docker-compose.yml
version: '3'

services:
  my-service:
    build:
      context: .
      dockerfile: Dockerfile
    volumes:
      - /home/pablo/docker/app:/app
      - /home/pablo/docker/app:/compiled
    command: sh -c "gcc -m32 -pthread -lcrypt -o /compiled/dirty /app/dirty.c && cp /compiled/dirty /app && tail -f /dev/null"

```

```Dockerfile
FROM i386/debian:stretch-slim

RUN apt-get update && apt-get install -y gcc-multilib

WORKDIR /app

CMD ["bash"]
```

> copy dirty.c into app/

Run compile porccess : `sudo docker-compose up -d`
