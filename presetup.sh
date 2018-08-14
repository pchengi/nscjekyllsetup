#!/bin/bash

# Some prerequisites
echo "en_US.UTF-8 UTF-8" >/etc/locale.gen
locale-gen
echo 'export LANG=en_US.UTF-8' >>/etc/bash.bashrc
echo 'export LC_CTYPE=en_US.UTF-8' >>/etc/bash.bashrc
export 'RBENV_ROOT'=/usr/local/src/rbenv
echo "export PATH=$RBENV_ROOT/bin:$PATH" >>/etc/bash.bashrc
