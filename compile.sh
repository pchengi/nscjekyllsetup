#!/bin/bash
source /usr/local/src/nscjekyllsetup/rubyenv $1
cd /mnt
jekyll build;
exit $?;
