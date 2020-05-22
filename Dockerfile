FROM centos:7
LABEL author="steven"
RUN yum groupinstall -y "Development tools"
RUN yum -y install tar gcc zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel
RUN cd /tmp && curl https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz -o Python-2.7.18.tgz \
    && tar zxf Python-2.7.18.tgz && cd Python-2.7.18 && ./configure --prefix=/usr/local && make && make altinstall
RUN mv /usr/bin/python2.7 /usr/bin/python2.7.5 && ln -s /usr/local/bin/python2.7 /usr/bin/python2.7
RUN set -ex \
    && sed -i "s#/usr/bin/python#/usr/bin/python2.7.5#" /usr/bin/yum \
    && sed -i "s#/usr/bin/python#/usr/bin/python2.7.5#" /usr/libexec/urlgrabber-ext-down
RUN cd /tmp && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py
RUN yum -y install deltarpm && yum clean all && rm -rf /tmp/*
