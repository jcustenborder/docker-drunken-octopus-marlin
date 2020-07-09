FROM ubuntu
RUN apt-get update && apt-get upgrade -y && \
  apt-get install -y python \
      git \
      make \
      rename \
      gcc-avr \
      avr-libc \
      gcc-arm-none-eabi \
      python-pip && \
  apt-get clean
RUN pip3 install -U platformio

RUN groupadd -g 994 docker
RUN useradd --uid 1000 -m -G docker jenkins

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

USER jenkins
