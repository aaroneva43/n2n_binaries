#!/bin/sh /etc/rc.common
#
# Copyright (C) 2014 Justin Liu <rssnsj@gmail.com>
# https://github.com/rssnsj/network-feeds
#


START=97
STOP=97
NAME=edge

start () {
    echo "Starting $NAME..."
    service_start /usr/bin/edge -a 10.1.0.110 -c p2pnet -k 123 -l yycui.com:5566 -m 11:a1:af:a7:87:1b -f || return 2

}
