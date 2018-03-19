FROM debian

RUN apt-get update && apt-get install -y git wget gcc make libssl-dev libreadline-dev zlib1g-dev vim bzip2 locales pandoc python2.7
RUN useradd nscuser --shell /bin/bash
WORKDIR /usr/local/src
RUN git clone https://github.com/snic-nsc/nscjekyllsetup.git
WORKDIR /usr/local/src/nscjekyllsetup
RUN git checkout 'v1.09'
RUN bash presetup.sh
RUN bash setup.sh
USER nscuser
WORKDIR /usr/local/src/nscjekyllsetup
ENTRYPOINT /bin/bash
