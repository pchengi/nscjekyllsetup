#!/bin/bash
export LANG=en_US.UTF-8
source /usr/local/src/nscjekyllsetup/rubyenv $1
jekyll build;
exit $?;
