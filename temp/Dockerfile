FROM astra16se
ENV container=podman  

ARG DEBIAN_FRONTEND=noninteractive
RUN echo "root:qwerty" | chpasswd
RUN cp /mnt/astra/etc/apt/sources.list -f /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get -y install locales locales-all dialog
RUN locale-gen ru_RU.UTF-8 && update-locale LC_ALL=ru_RU.UTF-8 LANG=ru_RU.UTF-8
ENV LANG ru_RU.UTF-8
ENV LC_ALL ru_RU.UTF-8

ENV USER_NAME andrey
ARG host_uid=1000
ARG host_gid=1000
RUN groupadd -g $host_gid $USER_NAME && useradd -g $host_gid -m -s /bin/bash -u $host_uid $USER_NAME
USER $USER_NAME
WORKDIR /home/$USER_NAME/
