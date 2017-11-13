#!/usr/bin/env bash

if type yum >/dev/null 2>&1; then
    yum clean all
    rm -fr /var/cache/yum
fi

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

sync
