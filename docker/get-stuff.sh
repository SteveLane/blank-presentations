#!/bin/bash
# First get fancyBox
cd /home/fancyBox
wget https://github.com/fancyapps/fancybox/archive/v3.1.20.tar.gz
tar -xzf v3.1.20.tar.gz --strip=1
rm v3.1.20.tar.gz
cd /home/ggsteve
wget https://github.com/SteveLane/ggsteve/archive/master.tar.gz
tar -xzf master.tar.gz --strip=1
rm master.tar.gz
