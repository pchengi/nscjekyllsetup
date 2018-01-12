#!/bin/bash

src=$1
if [ "$src" = "nsc" ]; then
        source $HOME/setupnscruby;
else
        source $HOME/setupruby;
fi
cd $HOME/mnt;
jekyll build;
exit $?;
