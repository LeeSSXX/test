FROM ubuntu:16.04
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get -y install git wget make flex bison gperf unzip python-pip
RUN apt-get -y install gcc-multilib
RUN apt-get -y install libssl-dev libssl-dev:i386
RUN apt-get -y install libncurses-dev libncurses-dev:i386
RUN apt-get -y install libreadline-dev libreadline-dev:i386
RUN apt-get -y install minicom

RUN pip install setuptools
RUN pip install wheel
RUN pip install aos-cube
RUN pip install --upgrade pip

CMD ["/bin/bash"]