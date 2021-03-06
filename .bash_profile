#!/bin/bash

if [[ -f ~/.bashrc ]] ; then . ~/.bashrc; fi
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

# Generic Colorize Functions

RED="`tput setaf 1`"
GREEN="`tput setaf 2`"
YELLOW="`tput setaf 3`"
BLUE="`tput setaf 4`"
MAGENTA="`tput setaf 5`"
CYAN="`tput setaf 6`"
WHITE="`tput setaf 7`"
RESET="`tput sgr0`"

function colorize() {
    if [[ "$USE_COLORS" != "no" ]]; then
        c="$1"
        shift
        echo -n ${c}${@}${RESET};
    else
        shift
        echo -n "$@";
    fi
}

function green() { colorize "${GREEN}" "${@}"; }
function red() { colorize "${RED}" "${@}"; }
function yellow() { colorize "${YELLOW}" "${@}"; }
function blue() { colorize "${BLUE}" "${@}"; }
function magenta() { colorize "${MAGENTA}" "${@}"; }
function cyan() { colorize "${CYAN}" "${@}"; }
function white() { colorize "${WHITE}" "${@}"; }

# They check if a variable $OUT is set,
# printing to the path given by it, using stdout otherwise.
# Another Option is $COMPACT which removes comments from the output.

function print_out() {
    if [ -z "$OUT" ]; then
        echo "$@";
    else
        echo "$@" >> "$OUT"
    fi
}

function redirect_out() {
    local line=""
    while IFS='' read -r line; do
        print_out "$line";
    done
}

function sep() { 
    if [[ "$COMPACT" != "yes" ]]; then
        print_out -n "# ";  
        print_out "$(head -c 45 /dev/zero | tr '\0' '-')"; 
    fi
}
function comment() { 
    if [[ "$COMPACT" != "yes" ]]; then print_out "# $@"; fi; 
}

function nl() { 
    if [[ "$COMPACT" != "yes" ]]; then print_out ""; fi; 
}

# Generic Logging Functions

function error() {
    echo -n "$(red "(ERROR)") " 1>&2
    echo "$@" 1>&2
}

function fatal() {
    error "$@";
    exit 1;
}

function success() {
    echo "$(green "$@")"
}

