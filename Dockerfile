FROM srzzumix/arm-none-eabi
COPY src/ /dst/

RUN apk add -U git curl
