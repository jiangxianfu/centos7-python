FROM centos:7
LABEL author="steven"
RUN yum groupinstall -y "Development tools"
RUN yum -y install gcc zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel
RUN curl https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz -o /tmp/Python-2.7.18.tgz \
    && tar zxf Python-2.7.18.tgz && cd /tmp/Python-2.7.18 && ./configure \
    && make && make install
RUN rm /usr/bin/python2.7 && ln -s /usr/local/bin/python2.7 /usr/bin/python2.7
RUN curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py \
    && python get-pip.py
