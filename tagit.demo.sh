#!/bin/bash -x

# pick-up nimbix creds
p=`stat -c "%a" ~/.nimbix`
if [ ${p} = 600 ]
then
    . ~/.nimbix    
else
    echo "error. ~/.nimbix not 600"
    stat -c "%a %n" ~/.nimbix
    exit 1
fi

# blregistry domain name
blregistry=blacklynx

# version
v=v8
if [ ! -z "${1}" ]
then
    v=$1
fi

docker tag blacklynx_search:${v}.nimbix.demo ${blregistry}/blacklynx_search:${v}.nimbix.demo
docker push ${blregistry}/blacklynx_search:${v}.nimbix.demo

# initiate pull request (tested)
curl -X POST \
    -F "username=${nimbix_username}" \
    -F "repo=${blregistry}/blacklynx_search:${v}.nimbix.demo" \
    -F "apikey=${nimbix_apikey}" \
    -F "target=blacklynx_hpc_demo_${v}" \
    https://api.jarvice.com/jarvice/pull

# initiate pull request (untested)
## curl -X POST \
##     -F "username=${nimbix_username}" \
##     -F "repo=blregistry.internationalfusioncenter.com%2Fblacklynx_test" \
##     -F "apikey=${nimbix_apikey}" \
##     -F "target=privatehelloworld" \
##     -F "pull=1"
##     https://api.jarvice.com/jarvice/build
