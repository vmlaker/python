#!/bin/bash

VERSION=3.8.5

# Optionally set number of make jobs, otherwise use all CPUs.
NJOBS=$1
if [ -z "$NJOBS" ]
then
    NJOBS=$(nproc)
fi

mkdir -p usr

wget https://www.python.org/ftp/python/${VERSION}/Python-${VERSION}.tgz
tar xzf Python-${VERSION}.tgz
cd Python-${VERSION}

./configure --prefix=$(pwd)/../usr
make ${NJOBS}
make install
