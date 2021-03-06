#!/bin/bash

# SET DEBUG
set -x

# GLOBAL VARIABLES
BIN_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd)"
LIB_PATH="$BIN_PATH/lib/"
WRK_PATH="$( pwd )"

# INPUT VARIABLES
arg1="$2"
arg2="$3"
arg3="$4"

# LOAD LIBRARIES
source $LIB_PATH/functions.sh
source $LIB_PATH/openssl.sh
source $LIB_PATH/accounts.sh
source $LIB_PATH/help.sh

if [[ "$1" == "csr" ]]; then
	generate_csr
elif [[ "$1" == "bulkcsr" ]]; then
	bulk_csr
elif [[ "$1" == "joinp12" ]]; then
        make_pkcs12
elif [[ "$1" == "splitp12" ]]; then
        split_pkcs12
elif [[ "$1" == "adduser" ]]; then
	add_user
elif [[ "$1" == "help" ]]; then
	display_help
elif [[ -z $1 ]]; then 
	display_help
fi
