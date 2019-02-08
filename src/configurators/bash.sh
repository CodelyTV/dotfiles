#!/usr/bin/env bash

if [[ "yes" != "$CONFIGURE_BASH" ]]; then
    exit 0
fi

function main() {
    cp $ROOT_DIRECTORY/files/bash/{.[!.],}* ~/
}

main