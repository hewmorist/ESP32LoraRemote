FROM mcr.microsoft.com/devcontainers/base:jammy

RUN apt-get update && apt-get install -y xz-utils \
usbutils \
python3-pip \
python3-setuptools \
python3-venv \
udev \
mc \
&& apt-get clean

RUN pip3 install platformio

RUN echo "alias mc='. /usr/lib/mc/mc-wrapper.sh'" >> home/vscode/.bashrc

# RUN rm /etc/udev/rules.d/99-platformio-udev.rules

COPY 99-usb-uart.rules /etc/udev/rules.d

RUN rm -f /dev/ttyUSB0 && \
    mknod /dev/ttyUSB0 c 188 0 && \
    chmod 666 /dev/ttyUSB0

 COPY entrypoint.sh /entrypoint.sh

 USER vscode

 RUN sudo usermod -a -G dialout $USER

 USER root

ENTRYPOINT ["/entrypoint.sh"]

