#!/usr/bin/env bash

CONFIGURATORS_PATH=$ROOT_DIRECTORY/src/configurators

configurators=(
    adjust_apps_settings
    adjust_macos_settings
    bash
    git
    install_macos_apps
)

function main() {
    for current_configurator in ${configurators[@]} ; do
        $CONFIGURATORS_PATH/$current_configurator.sh
    done
}

main