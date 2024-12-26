FROM mcr.microsoft.com/devcontainers/base:jammy
# Install the xz-utils package
RUN apt-get update && apt-get install -y xz-utils \
usbutils \
python3-pip \
python3-setuptools \
python3-venv \
udev \
mc \
&& apt-get clean

RUN curl -fsSL https://raw.githubusercontent.com/platformio/platformio-core/develop/platformio/assets/system/99-platformio-udev.rules \
|   sudo tee /etc/udev/rules.d/99-platformio-udev.rules

RUN pip3 install platformio

RUN rm /etc/udev/rules.d/99-platformio-udev.rules

COPY 99-usb-uart.rules /etc/udev/rules.d

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

