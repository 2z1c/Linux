mk_file=debian_arm64.mk
dir=kernel-4.14
config:
	cd ${dir} && make -f ${mk_file} config
menuconfig:
	cd ${dir} && make -f ${mk_file} $@
build:
	cd ${dir} && make -f ${mk_file} vmlinux
modules:
	cd ${dir} && make -f ${mk_file} $@
clean:
	cd ${dir} && make -f ${mk_file} $@
help:
	cd ${dir} && make -f ${mk_file} $@
distclean:
	cd ${dir} && make -f ${mk_file} $@
image:
	cd ${dir} && make -f ${mk_file} Image.gz