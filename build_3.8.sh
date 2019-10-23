#!/bin/bash

mkdir -p usr

wget https://www.python.org/ftp/python/3.8.0/Python-3.8.0.tgz
tar xzf Python-3.8.0.tgz
cd Python-3.8.0

./configure --prefix=$(pwd)/../usr
make -j8
make install
