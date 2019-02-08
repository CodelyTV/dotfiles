#!/usr/bin/env bash

if [[ "yes" != "$CONFIGURE_GIT" ]]; then
    exit 0
fi

function main() {
    cp $ROOT_DIRECTORY/files/git/{.[!.],}* ~/
}

main