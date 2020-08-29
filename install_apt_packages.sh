#!/bin/bash

packages="
libffi-dev
libssl-dev
"
for package in ${packages}; do
    echo "===== Installing ${package} ====="
    apt-get install -y ${package}
done
