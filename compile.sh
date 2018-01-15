#!/bin/bash
export LANG=en_US.UTF-8
src=$1
if [ "$src" = "nsc" ]; then
        source /home/nscuser/setupnscruby;
else
        source /home/nscuser/setupruby;
fi
cd /home/nscuser/mnt;
jekyll build;
exit $?;
