#!/usr/bin/env sh

polymer serve build/default &
sleep 1
echo $! > .pidfile