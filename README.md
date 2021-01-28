# centos7 下不同python版本的docker

 ## centos7-python27

 最新版本centos7 对应的python2.7.18 的 Dockerfile
 
 ### docker command
 ```
 #build
 docker build -t python27-centos7 .
 #tag
 docker tag python27-centos7:latest jiangxianfu/python27-centos7:latest
 #push
 docker push jiangxianfu/python27-centos7:latest
 ```
