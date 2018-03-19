FROM debian

RUN apt-get update && apt-get install -y git wget gcc make libssl-dev libreadline-dev zlib1g-dev vim bzip2 locales pandoc python2.7
RUN useradd nscuser --shell /bin/bash
RUN mkdir -p /home/nscuser
WORKDIR /home/nscuser
RUN git clone https://github.com/snic-nsc/nscjekyllsetup.git
WORKDIR /home/nscuser/nscjekyllsetup
RUN git checkout 'v1.04'
RUN bash presetup.sh
RUN chown -R nscuser:nscuser /home/nscuser
USER nscuser
WORKDIR /home/nscuser/nscjekyllsetup
RUN bash setup.sh
USER root
RUN bash postsetup.sh
USER nscuser
WORKDIR /usr/local/src/nscjekyllsetup
ENTRYPOINT /bin/bash
