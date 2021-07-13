FROM centos:8
USER root

# Install epel-release
RUN  dnf install epel-release dnf-utils \
     yum-config-manager --set-enabled PowerTools \
     yum-config-manager --add-repo=https://negativo17.org/repos/epel-multimedia.repo \
     dnf install ffmpeg 



# Install ffmpeg ffmpeg-devel
RUN  dnf install ffmpeg && \
    ffmpeg -version

ADD pod-daemon.sh /tmp/pod-daemon.sh
RUN chmod +x /tmp/pod-daemon.sh
CMD /tmp/pod-daemon.sh
