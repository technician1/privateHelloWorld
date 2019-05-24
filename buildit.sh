#!/bin/bash

#docker login blregistry.internationalfusioncenter.com
v=v12a
if [ ! -z "${1}" ]
then
    v=$1
fi
docker build  -t blacklynx_search:${v}.nimbix.test .
