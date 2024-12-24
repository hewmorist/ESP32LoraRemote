FROM mcr.microsoft.com/devcontainers/universal:2-linux
# Install the xz-utils package
RUN apt-get update && apt-get install -y xz-utils \
&& apt-get install -y usbutils \
python3-pip \
python3-setuptools \
python3-venv \
mc \
&& apt-get clean


RUN pip3 install platformio
#RUN wget -q https://raw.githubusercontent.com/platformio/platformio-core-installer/master/get-platformio.py

#RUN sudo PLATFORMIO_CORE_DIR=/opt/platformio python3 get-platformio.py \
#   && sudo ln -s /opt/platformio/penv/bin /home/codespace/platformio

 RUN platformio --version
 
 CMD ["platformio", "--version"]

