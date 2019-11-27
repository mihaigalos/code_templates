#!/bin/bash

set -euxo pipefail

usage() {
    cat <<EOT

    Usage:
    $(basename $0) Explain options here

EOT
    exit 0
}

if [ "$#" -ne 1 ]; then
   usage; 
fi
