#!/bin/bash

packages="
libffi-dev
libssl-dev
"
for package in ${packages}; do
    apt-get install -y ${package}
done
