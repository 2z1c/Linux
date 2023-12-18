#!/bin/bash
option="${@:-help}"

do_install_apt(){
    sudo apt-get update
    sudo apt install -y gcc-aarch64-linux-gnu libncurses-dev gawk flex bison openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf llvm
}

usage(){
    echo "
        install_apt             install apt package
    "
}
case $option in
    install_apt)	do_install_apt ;;
    *)  usage ;;
esac
