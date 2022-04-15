#!/usr/bin/env bash

BindTools="/usr/bin/dig"

if [[ ! -f "${BindTools}" ]]; then
    PublicIP="bind-tools-9.x required"
else
    PublicIP=$(dig +short myip.opendns.com @resolver1.opendns.com)
fi

if [[ ! -z "${PublicIP}" ]]; then
    echo "$PublicIP"
else
    echo "DISCONNECTED!"
fi

exit 0
