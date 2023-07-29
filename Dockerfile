FROM ubuntu:22.04
RUN apt-get update \
    && apt-get install -y python3 python3-pip usbutils
RUN pip install pyserial
COPY src/ /dst/