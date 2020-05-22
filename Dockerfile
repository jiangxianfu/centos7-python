FROM centos:7
LABEL author="steven"
RUN yum -y install wget
RUN cd /tmp \
    && wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz \
    && tar zxf Python-2.7.18.tgz && cd Python-2.7.18 && ./configure \
    && make && make install
RUN rm /usr/bin/python && ln -s /usr/bin/python /usr/local/bin/python
RUN rm -rf /tmp/*
