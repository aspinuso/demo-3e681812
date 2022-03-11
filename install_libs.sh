#!/bin/bash

function install_icclim() {
    version=$1
    cd /tmp
    wget -c https://github.com/cerfacs-globc/icclim/archive/${version}.tar.gz -O - | tar -xz && \
        cd icclim-${version} && \
        gcc -fPIC -g -c -Wall ./icclim/libC.c -o ./icclim/libC.o && \
        gcc -shared -o ./icclim/libC.so ./icclim/libC.o && \
        python setup.py install
    cd /home/jovyan
}

# =======================================================
# Everything below here is generated by the snapshot job:
# =======================================================
install_icclim 5.0.2
