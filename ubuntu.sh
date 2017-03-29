#!/usr/bin/env bash

DISTRO=$1

if [ "$#" == 0 ] || [ "$#" -gt 1 ]; then
    DISTRO=xenial
fi

echo "deb http://mirrors.aliyun.com/ubuntu/ $DISTRO main restricted universe 
deb http://mirrors.aliyun.com/ubuntu/ $DISTRO-security main restricted universe 
deb http://mirrors.aliyun.com/ubuntu/ $DISTRO-updates main restricted universe 
deb http://mirrors.aliyun.com/ubuntu/ $DISTRO-proposed main restricted universe 
deb http://mirrors.aliyun.com/ubuntu/ $DISTRO-backports main restricted universe 
deb-src http://mirrors.aliyun.com/ubuntu/ $DISTRO main restricted universe 
deb-src http://mirrors.aliyun.com/ubuntu/ $DISTRO-security main restricted universe 
deb-src http://mirrors.aliyun.com/ubuntu/ $DISTRO-updates main restricted universe 
deb-src http://mirrors.aliyun.com/ubuntu/ $DISTRO-proposed main restricted universe 
deb-src http://mirrors.aliyun.com/ubuntu/ $DISTRO-backports main restricted universe " \
> /etc/apt/sources.list
