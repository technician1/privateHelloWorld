#!/bin/bash -x

#docker login blregistry.internationalfusioncenter.com
v=v12a
if [ ! -z "${1}" ]
then
    v=$1
fi
docker tag blacklynx_search:${v}.nimbix.test blregistry.internationalfusioncenter.com/blacklynx_search:${v}.nimbix.test
docker push blregistry.internationalfusioncenter.com/blacklynx_search:${v}.nimbix.test
