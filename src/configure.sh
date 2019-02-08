#!/usr/bin/env bash

CONFIGURATORS_PATH=$ROOT_DIRECTORY/src/configurators

configurators=(
    git
)

function main() {
    for current_configurator in ${configurators[@]} ; do
        $CONFIGURATORS_PATH/$current_configurator.sh
    done
}

main;