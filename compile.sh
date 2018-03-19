#!/bin/bash
source /home/nscuser/singenv $1
cd /mnt;
jekyll build;
exit $?;
