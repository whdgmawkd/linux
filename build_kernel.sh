#!/bin/bash
make bcm2711_rpi4_defconfig
make bindeb-pkg KDEB_PKGVERSION=$(make kernelversion) KERNELRELEASE=5.15 LOCALVERSION= -j8

INSTALL_PATH=./out make dtbs_install
