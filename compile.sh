#!/bin/bash
source /home/nscuser/singenv $1
cd /home/nscuser/mnt;
jekyll build;
exit $?;
