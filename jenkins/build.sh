#!/usr/bin/env sh

PATH="/bin:/usr/sbin:/usr/local/bin:/usr/bin"
git --version
npm install -g bower@1.8.2 polymer-cli@0.18.4
bower install --allow-root
polymer build