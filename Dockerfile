FROM blacklynx_search:v2.nimbix

# nimbix
RUN apt-get -y update && \
    apt-get -y install curl && \
    curl -H 'Cache-Control: no-cache' \
        https://raw.githubusercontent.com/nimbix/image-common/master/install-nimbix.sh \
        | bash

# Expose port 22 for local emulation (not Jarvice/Nimbix) 
EXPOSE 22

ADD ./NAE/help.html /etc/NAE/help.html
COPY ./NAE/AppDef.json /etc/NAE/AppDef.json
COPY ./NAE/AppDef.png /etc/NAE/AppDef.png

RUN curl --fail -X POST -d @/etc/NAE/AppDef.json https://api.jarvice.com/jarvice/validate
