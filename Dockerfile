FROM centos:7
LABEL author="steven"
RUN yum groupinstall -y "Development tools"
RUN yum -y install wget gcc zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel
RUN wget -P /tmp https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz \
    && tar zxf Python-2.7.18.tgz && cd /tmp/Python-2.7.18 && ./configure \
    && make && make install
RUN rm /usr/bin/python && ln -s /usr/bin/python /usr/local/bin/python
