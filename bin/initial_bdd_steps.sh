#!/usr/bin/env bash

echo "Start in an empty directory"
(set -x; ls -a)
sleep 3
(set -x; clear)
sleep 1
(set -x; cucumber)
sleep 5
(set -x; cucumber --init)
sleep 5
(set -x; cucumber)
sleep 5
(set -x; cp ../examples/notify_user.feature features/)
sleep 5
(set -x; cat features/notify_user.feature)
sleep 10
(set -x; cucumber)
