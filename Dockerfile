FROM ubuntu:22.04
RUN apt-get update \
    && apt-get install -y python3 python3-pip usbutils wget libtinfo5 libncurses5 libncursesw5 libpython2.7
RUN mkdir ~/rsd-tools \
    && cd ~/rsd-tools \
    && wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2 \
    && tar -xvf gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2 \
    && PATH=$PATH:$HOME/rsd-tools/gcc-arm-none-eabi-10.3-2021.10/bin \
    && arm-none-eabi-gdb -v
RUN pip install pyserial
COPY src/ /dst/
