FROM debian:stretch-slim

RUN apt-get update && apt-get install -y wget gcc libz-dev && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/oracle/graal/releases/download/vm-1.0.0-rc1/graalvm-ce-1.0.0-rc1-linux-amd64.tar.gz
RUN tar -xvzf graalvm-ce-1.0.0-rc1-linux-amd64.tar.gz && rm graalvm-ce-1.0.0-rc1-linux-amd64.tar.gz
RUN apt-get remove -y wget

ENV PATH=/graalvm-1.0.0-rc1/bin:$PATH