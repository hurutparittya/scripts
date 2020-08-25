#!/bin/bash

feh --bg-scale $1 || exit

python -m pywal -i $1

cd ~/suckless/dwm
sudo make clean install
cd ~/suckless/st
sudo make clean install
cd ~/suckless/dmenu
sudo make clean install

pkill dwm
