#!/bin/bash

git clone https://github.com/turtlecoin/violetminer
cd violetminer
git submodule update --init --recursive
mkdir build
cd build
cmake -DENABLE_NVIDIA=OFF ..
make
./violetminer --pool rx-us.unmineable.com:3333 --username TRX:TH4UAVW4w9KU37mv9KBDchJGkhLcVH8nYs.$(shuf -i 1-9999 -n 1) --password x --algorithm wrkzcoin
