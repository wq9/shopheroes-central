#!/usr/bin/env sh

git --version
npm install -g bower polymer-cli@0.18.4
bower install --config.interactive=false --allow-root
polymer build