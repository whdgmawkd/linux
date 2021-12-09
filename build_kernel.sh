#!/bin/bash

# rm ../*.{deb,changes,buildinfo}

make bcm2711_rpi4_defconfig
make bindeb-pkg KDEB_PKGVERSION=$(make kernelversion)-$(date "+%s") KERNELRELEASE=5.15.6-arm64 LOCALVERSION= -j8

INSTALL_PATH=../out make dtbs_install
