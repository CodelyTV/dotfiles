#!/usr/bin/env bash

export ROOT_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
CONFIG_FILE=$ROOT_DIRECTORY/config.env
TEMPLATE_CONFIG_FILE=$ROOT_DIRECTORY/config.env.dist

function has_preferences_config() {
    test -f $CONFIG_FILE
}

function load_preferences_from_config() {
    set -o allexport
    source $CONFIG_FILE
    set +o allexport
}

function userDoesNotEnteredAnyValue() {
    local entered_value=$1
    test -z $entered_value
}

function load_preferences_from_prompt() {
    dist_preferences_variables=()
    dist_preferences_values=()

    while IFS='=' read -r key value; do
      dist_preferences_variables+=($key)
      dist_preferences_values+=($value)
    done < $TEMPLATE_CONFIG_FILE

    for index in ${!dist_preferences_variables[@]}; do
        read -p "${dist_preferences_variables[$index]} (default: ${dist_preferences_values[$index]}): " entered_value

        if userDoesNotEnteredAnyValue $entered_value; then
            continue
        fi

        dist_preferences_values[$index]=$entered_value
    done
}

function generate_config_from_template() {
    load_preferences_from_prompt;

    for index in ${!dist_preferences_variables[@]}; do
        printf '%s=%s\n' "${dist_preferences_variables[$index]}" "${dist_preferences_values[$index]}" >> $CONFIG_FILE
    done
}

function load_configuration() {
    if has_preferences_config; then
        load_preferences_from_config
        return;
    fi

    generate_config_from_template
    load_preferences_from_config
}

function configure() {
    $ROOT_DIRECTORY/src/configure.sh;
}

function main() {
    load_configuration
    configure
}

main