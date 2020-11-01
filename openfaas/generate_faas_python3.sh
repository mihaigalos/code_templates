#! /bin/bash

docker run -it --rm -v $PWD:/home/workspace  --user $UID:$UID  openfaas/faas-cli sh -c "cd /home/workspace && /home/app/faas-cli new --lang=python hipython"
