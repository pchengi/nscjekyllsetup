#!/bin/bash
source /usr/local/src/nscjekyllsetup/rubyenv $1
jekyll build;
exit $?;
