FROM mcr.microsoft.com/devcontainers/universal:2-linux
# Install the xz-utils package
RUN apt-get update && apt-get install -y xz-utils \
usbutils \
python3-pip \
python3-setuptools \
python3-venv \
udev \
mc \
&& apt-get clean

RUN pip3 install platformio

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

