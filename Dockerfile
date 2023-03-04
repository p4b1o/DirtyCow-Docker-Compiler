FROM i386/debian:stretch-slim

RUN apt-get update && apt-get install -y gcc-multilib

WORKDIR /app

CMD ["bash"]

