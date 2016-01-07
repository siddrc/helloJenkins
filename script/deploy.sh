#!/bin/sh
ssh root@54.152.11.134 <<EOF
  cd ~/hello-jenkins
  git pull
  npm install --production
  forever restartall
  exit
EOF