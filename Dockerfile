FROM srzzumix/arm-none-eabi
COPY src/ /dst/

RUN apt-get install usbutils
