# privateHelloWorld

# put nimbix creds in ~/.nimbix
```
echo "nimbix_username=keanu" >~/.nimbix
echo "nimbix_apikey=reeves" >>~/.nimbix
chown 600 ~/.nimbix
```

# AppDef.json setup
## AppDef.json adjust startup buttons as you see fit

## AppDef.json note -MLV radio button -> /etc/JARVICE/cmdline

## AppDef.json image tag generation 
```
cd
base64 -w 0 AppDef.png
```

# build blacklynx_search:v6.nimbix.test
```
cd
git clone https://github.com/technician1/privateHelloWorld
cd privateHelloWorld
./buildit.sh v6
```

# tag/upload to dockerhub blacklynx/blacklynx_search:v6.nimbix.test
# jarvice pull webhook (must have blacklynx_hpc_v6 'push-to-compute' stub available)
```
./tagit.sh v6
```
