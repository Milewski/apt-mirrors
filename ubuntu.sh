#!/usr/bin/env bash

DISTRO=$1

if [ "$#" == 0 ] || [ "$#" -gt 1 ]; then
    DISTRO=xenial
fi

echo "deb http://mirrors.aliyun.com/ubuntu/ ${DISTRO} main restricted
deb http://mirrors.aliyun.com/ubuntu/ ${DISTRO}-updates main restricted
deb http://mirrors.aliyun.com/ubuntu/ ${DISTRO} universe
deb http://mirrors.aliyun.com/ubuntu/ ${DISTRO}-updates universe
deb http://mirrors.aliyun.com/ubuntu/ ${DISTRO}-backports main restricted
deb http://mirrors.aliyun.com/ubuntu/ ${DISTRO}-security main restricted
deb http://mirrors.aliyun.com/ubuntu/ ${DISTRO}-security universe
deb http://mirrors.aliyun.com/ubuntu/ ${DISTRO}-security multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ ${DISTRO} main restricted
deb-src http://mirrors.aliyun.com/ubuntu/ ${DISTRO}-updates main restricted
deb-src http://mirrors.aliyun.com/ubuntu/ ${DISTRO} universe
deb-src http://mirrors.aliyun.com/ubuntu/ ${DISTRO}-updates universe
deb-src http://mirrors.aliyun.com/ubuntu/ ${DISTRO}-backports main restricted
deb-src http://mirrors.aliyun.com/ubuntu/ ${DISTRO}-security main restricted
deb-src http://mirrors.aliyun.com/ubuntu/ ${DISTRO}-security universe
deb-src http://mirrors.aliyun.com/ubuntu/ ${DISTRO}-security multiverse" \
> /etc/apt/sources.list


