FROM nvidia/cuda:7.5-runtime-ubuntu14.04

ADD /helloWorld /usr/bin/
RUN apt-get update && apt-get -y --force-yes install cuda-samples-7.5 && apt-get clean
RUN make -C /usr/local/cuda/samples/1_Utilities/deviceQuery
RUN ln -s /usr/local/cuda/samples/1_Utilities/deviceQuery/deviceQuery /usr/bin


ADD ./NAE/help.html /etc/NAE/help.html
COPY ./NAE/AppDef.json /etc/NAE/AppDef.json

# stuff data
RUN mkdir -p /opt/BlackLynx
RUN cd /opt/BlackLynx; wget https://download.netresec.com/pcap/maccdc-2012/maccdc2012_00000.pcap.gz

