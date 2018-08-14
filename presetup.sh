#!/bin/bash

# Some prerequisites
echo 'export LANG=en_US.UTF-8' >>/etc/bashrc
echo 'export LC_CTYPE=en_US.UTF-8' >>/etc/bashrc
export 'RBENV_ROOT'=/usr/local/src/rbenv
echo "export PATH=$RBENV_ROOT/bin:$PATH" >>/etc/bashrc
