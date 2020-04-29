from ubuntu:bionic

ENV INSTALL_KEY=379CE192D401AB61
RUN apt-get update && apt-get install gnupg1 apt-transport-https dirmngr -y
RUN export DEB_DISTRO=bionic && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $INSTALL_KEY && \
    echo "deb https://ookla.bintray.com/debian ${DEB_DISTRO} main" | tee  /etc/apt/sources.list.d/speedtest.list && \
    apt-get update && \
    apt-get install speedtest -y

RUN speedtest --accept-license

ENTRYPOINT ["speedtest"]