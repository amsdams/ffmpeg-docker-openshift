FROM centos:7
USER root

# Install epel-release
RUN sudo dnf install epel-release dnf-utils \
    sudo yum-config-manager --set-enabled PowerTools \
    sudo yum-config-manager --add-repo=https://negativo17.org/repos/epel-multimedia.repo \
    sudo dnf install ffmpeg 



# Install ffmpeg ffmpeg-devel
RUN sudo dnf install ffmpeg && \
    ffmpeg -version

ADD pod-daemon.sh /tmp/pod-daemon.sh
RUN chmod +x /tmp/pod-daemon.sh
CMD /tmp/pod-daemon.sh
