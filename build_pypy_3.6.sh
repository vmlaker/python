#!/bin/bash
#####################################################################
#
#  Download and install PyPy.
#
#####################################################################
set -e

VERSION=7.3.1

# Optionally set number of make jobs, otherwise use all CPUs.
NJOBS=$1
if [ -z "$NJOBS" ]
then
    NJOBS=$(nproc)
fi

mkdir -p usr

dirname=pypy3.6-v${VERSION}-src
wget https://downloads.python.org/pypy/${dirname}.tar.bz2
tar xfj ${dirname}.tar.bz2
cd ${dirname}

# See instructions at:
#   https://doc.pypy.org/en/latest/build.html

cd pypy/goal
