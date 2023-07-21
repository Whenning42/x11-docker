FROM ubuntu

# Install X11
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y
RUN apt-get install -y curl
RUN apt-get install -y xauth
RUN apt-get install -y xinit
RUN apt-get install -y xorg
RUN apt-get install -y i3
RUN apt-get install -y software-properties-common

# Install the steam runtime.
RUN dpkg --add-architecture i386
RUN add-apt-repository multiverse
RUN apt update -y
RUN apt-get install -y steam

# Set up nvidia drivers
RUN apt-get install -y nvidia-driver-525 nvidia-utils-525
# TODO: GPU device passthrough for exclusive setups.
#       Nvidia container toolkit for shared setups.
