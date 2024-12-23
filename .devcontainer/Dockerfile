FROM mcr.microsoft.com/devcontainers/universal:2-linux
# Install the xz-utils package
RUN apt-get update && apt-get install -y xz-utils \
&& apt-get install -y usbutils \
&& apt-get install -y mc \
&& mkdir -p /home/codespace/Documents

WORKDIR "/home/codespace/Documents"