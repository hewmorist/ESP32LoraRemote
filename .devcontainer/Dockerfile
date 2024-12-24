FROM mcr.microsoft.com/devcontainers/universal:2-linux
# Install the xz-utils package
RUN apt-get update && apt-get install -y xz-utils \
&& apt-get install -y usbutils \
&& apt-get install -y python3-venv \
&& apt-get install -y mc 

USER ${CONTAINER_USER}
ENV USER=${CONTAINER_USER}
WORKDIR /home/${CONTAINER_USER}

RUN wget -q https://raw.githubusercontent.com/platformio/platformio-core-installer/master/get-platformio.py

RUN sudo PLATFORMIO_CORE_DIR=/opt/platformio python3 get-platformio.py \
    && sudo ln -s /opt/platformio/penv/bin/pio /usr/local/bin/pio