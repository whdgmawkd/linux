#!/bin/bash
make bcm2711_rpi4_defconfig
make bindeb-pkg KDEB_PKGVERSION=$(make kernelversion)-$(git rev-parse --short HEAD) KERNELRELEASE=5.15.6 LOCALVERSION= -j8

INSTALL_PATH=../out make dtbs_install
