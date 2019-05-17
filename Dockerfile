#FROM kevinmadden/blacklynx_search:v8.nimbix
FROM blregistry.internationalfusioncenter.com/blacklynx_search:v10.nimbix

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

# stuff data
RUN apt-get install wget

RUN su ryftuser -c "mkdir -p /ryftone/PCAP/MACCDC2012"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00000.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00000.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00001.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00001.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00002.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00002.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00003.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00003.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00004.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00004.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00005_fixed.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00005_fixed.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00006.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00006.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00007.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00007.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00008.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00008.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00009.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00009.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00010.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00010.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00011.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00011.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00012.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00012.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00013.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00013.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00014.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00014.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00015.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00015.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00016.pcap.gz"
RUN su ryftuser -c       "cd /ryftone/PCAP/MACCDC2012 && gunzip maccdc2012_00016.pcap.gz"

RUN su ryftuser -c "mkdir -p /ryftone/regression"
RUN su ryftuser -c 	"cd /ryftone/regression && wget https://s3.amazonaws.com/ryft-public-sample-data/wikipedia-20150518.bin.gz"
RUN su ryftuser -c 	"cd /ryftone/regression && gunzip wikipedia-20150518.bin.gz"
