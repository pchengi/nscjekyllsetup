#!/bin/bash
source /opt/nscjekyllsetup/rubyenv $1
cd /mnt
jekyll build;
exit $?;
