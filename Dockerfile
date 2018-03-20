FROM debian

RUN apt-get update && apt-get install -y git wget gcc make libssl-dev libreadline-dev zlib1g-dev vim bzip2 locales pandoc python2.7
RUN useradd nscuser -M --shell /bin/bash
WORKDIR /opt
RUN git clone https://github.com/snic-nsc/nscjekyllsetup.git
WORKDIR /opt/nscjekyllsetup
RUN git checkout 'v1.12'
RUN bash presetup.sh
RUN bash setup.sh
USER nscuser
WORKDIR /opt/nscjekyllsetup
ENTRYPOINT /bin/bash
