#!/bin/bash

tar zcvf web.tar.gz unpackage/dist/build/web/*
ssh root@wallpaper.cospapa.cn "mv ~/edu/web.tar.gz ~/edu/web-back.tar.gz"
scp web.tar.gz root@wallpaper.cospapa.cn:~/edu/
ssh root@wallpaper.cospapa.cn "tar zxvf ~/edu/web.tar.gz -C ~/edu"
