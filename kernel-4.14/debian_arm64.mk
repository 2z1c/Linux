export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-

config:
	make debian_defconfig

menuconfig help modules clean Image.gz vmlinux distclean:
	make $@
