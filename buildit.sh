#!/bin/bash -x

v=v6
if [ ! -z "${1}" ]
then
    v="${1}"
fi

docker build  -t blacklynx_search:${v}.nimbix.test .
