FROM debian:stretch-slim

RUN apt-get update && \
    apt-get install -y wget gcc libz-dev && \
    rm -rf /var/lib/apt/lists/*

ARG VERSION=1.0.0-rc16
RUN wget https://github.com/oracle/graal/releases/download/vm-$VERSION/graalvm-ce-$VERSION-linux-amd64.tar.gz && \
    tar -xvzf graalvm-ce-$VERSION-linux-amd64.tar.gz && \
    rm graalvm-ce-$VERSION-linux-amd64.tar.gz

ENV PATH=/graalvm-ce-$VERSION/bin:$PATH