#!/bin/bash

set -euxo pipefail

# Use outside of script: export INJECTED_VARIABLE="foo"; ./template.sh
declare injected_variable="${INJECTED_VARIABLE:-}"
echo "$injected_variable"
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
