#! /bin/bash

LANGUAGE=$1
APP_NAME=$2

usage() {
    cat <<EOT

    Usage:
    $(basename $0) language app_name

EOT
    exit 1
}



if [ "$#" -ne 2 ]; then
   echo "$#"
   usage; 
fi

mkdir -p generated
pushd generated

docker run -it --rm -v $PWD:/home/workspace  --user $UID:$UID  openfaas/faas-cli sh -c "cd /home/workspace && /home/app/faas-cli new --lang=${LANGUAGE} ${APP_NAME}"

popd
