#!/usr/bin/env bash
set -e

dir="raspbian"
rootfsDir="raspbian"
tarFile="rootfs.tar.xz"
(
	set -x
#	tar --remove-files --numeric-owner -cJvf "$tarFile" -C "$rootfsDir" .
	tar --numeric-owner -cJvf "$tarFile" -C "$rootfsDir" .
)

#( set -x; rm -rf "$rootfsDir" )
