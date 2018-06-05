#!/usr/bin/env sh

pwd
git --version
npm install bower@1.8.2 polymer-cli@0.18.4
bower install --allow-root
polymer build