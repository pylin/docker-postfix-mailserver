#!/bin/bash

# Set timezone
if [ ! -z "${SYSTEM_TIMEZONE}" ]; then
    ln -sf /usr/share/zoneinfo/${SYSTEM_TIMEZONE} /etc/localtime
    dpkg-reconfigure -f noninteractive tzdata
fi

# Set mynetworks for postfix relay
if [ ! -z "${MYNETWORKS}" ]; then
    echo "setting mynetworks = ${MYNETWORKS}"
    postconf -e mynetworks="${MYNETWORKS}"
fi

