FROM centos:7
LABEL author="steven"
RUN cd /tmp && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py
RUN rm -rf /tmp/*
