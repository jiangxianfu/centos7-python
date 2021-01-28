# centos7 下不同python版本的docker

 ## centos7-python27

 最新版本centos7 对应的python2.7.18 的 Dockerfile
 
 ### docker command
 ```
 #build
 docker build -f Dockerfile-Python27 -t centos7-python27 .
 #tag
 docker tag centos7-python27:latest jiangxianfu/centos7-python27:latest
 #push
 docker push jiangxianfu/centos7-python27:latest
 ```
 
  ## centos7-python3

 最新版本centos7 对应的python3 的 Dockerfile
 
 ### docker command
 ```
 #build
 docker build -f Dockerfile-Python3 -t centos7-python3 .
 #tag
 docker tag centos7-python3:latest jiangxianfu/centos7-python3:latest
 #push
 docker push jiangxianfu/centos7-python3:latest
 ```
