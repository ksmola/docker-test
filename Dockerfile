FROM ubuntu:22.04
RUN apt-get update \
    && apt-get install -y python3 usbutils
COPY src/ /dst/