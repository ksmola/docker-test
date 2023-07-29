FROM alpine:3.18
RUN apk add python3 usbutils
COPY src/ /dst/