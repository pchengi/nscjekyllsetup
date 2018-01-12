FROM debian

RUN apt-get update
RUN apt-get install -y git wget gcc make libssl-dev libreadline-dev zlib1g-dev vim bzip2 locales
RUN useradd nscuser
RUN mkdir -p /home/nscuser/mnt
WORKDIR /home/nscuser
RUN git clone https://github.com/snic-nsc/nscjekyllsetup.git
WORKDIR /home/nscuser/nscjekyllsetup
RUN bash presetup.sh
RUN chown -R nscuser:nscuser /home/nscuser
USER nscuser
WORKDIR /home/nscuser/nscjekyllsetup
RUN bash setup.sh
RUN cp compile.sh ..
RUN cp setupnscruby ..
RUN cp setupruby ..
WORKDIR /home/nscuser
ENTRYPOINT /bin/bash


