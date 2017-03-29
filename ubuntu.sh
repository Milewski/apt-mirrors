#!/bin/sh

DISTRO=$1

if [ "$#" == 0 ] || [ "$#" -gt 1 ]; then
    DISTRO=xenial
fi

echo "deb http://mirrors.aliyun.com/ubuntu/ $DISTRO main restricted universe multiverse 
      deb http://mirrors.aliyun.com/ubuntu/ $DISTRO-security main restricted universe multiverse 
      deb http://mirrors.aliyun.com/ubuntu/ $DISTRO-updates main restricted universe multiverse 
      deb http://mirrors.aliyun.com/ubuntu/ $DISTRO-proposed main restricted universe multiverse 
      deb http://mirrors.aliyun.com/ubuntu/ $DISTRO-backports main restricted universe multiverse 
      deb-src http://mirrors.aliyun.com/ubuntu/ $DISTRO main restricted universe multiverse 
      deb-src http://mirrors.aliyun.com/ubuntu/ $DISTRO-security main restricted universe multiverse 
      deb-src http://mirrors.aliyun.com/ubuntu/ $DISTRO-updates main restricted universe multiverse 
      deb-src http://mirrors.aliyun.com/ubuntu/ $DISTRO-proposed main restricted universe multiverse 
      deb-src http://mirrors.aliyun.com/ubuntu/ $DISTRO-backports main restricted universe multiverse "
      | cat - /etc/apt/sources.list > temp && mv temp /etc/apt/sources.list
