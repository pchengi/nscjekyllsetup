#!/bin/bash
export LANG=en_US.UTF-8
source /usr/local/src/nscjekyllsetup/rubyenv $1
cd /mnt
jekyll build;
exit $?;
