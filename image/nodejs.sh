#!/bin/bash
set -e
source /pd_build/buildconfig
set -x

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

## Install Node.js (also needed for Rails asset compilation)
minimal_apt_get_install nodejs
echo "+ Updating npm"
run npm update npm -g
if [[ ! -e /usr/bin/node ]]; then
	ln -s /usr/bin/nodejs /usr/bin/node
fi
