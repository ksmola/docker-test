FROM ubuntu:22.04
RUN apt-get update -y
COPY src/ /dst/