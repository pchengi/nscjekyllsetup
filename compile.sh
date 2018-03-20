#!/bin/bash
export LANG=en_US.UTF-8
source /opt/nscjekyllsetup/rubyenv $1
cd /mnt
jekyll build;
exit $?;
