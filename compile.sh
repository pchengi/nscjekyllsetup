#!/bin/bash
source /home/nscuser/singenv nsc
cd /home/nscuser/mnt;
jekyll build;
exit $?;
