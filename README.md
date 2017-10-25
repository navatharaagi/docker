# docker
https://www.docker.com/sites/default/files/Docker_CheatSheet_08.09.2016_0.pdf
1. Install docker on mac & create docker account
- After docker installation,start docker
```ssh
$docker login     /*login to our registry
username: xxxxxx
pwd: xxxxxxx
```
2. Pull CentOS 7 Image from docker registry
```ssh
$docker pull centos:7    /*pulls centos 7 image,when docker in running state
```
3. Docker run centOs 7 Image
```ssh
$docker images     /*gives image id and details which is unique
$docker run -id <image id>    /*to run image
$docker ps      /*lists the running containers with different ids after every docker run
$docker exec -it  <container id>  /bin/bash     /*to login to container
#exit     
$docker stop <container id>   /*to stop the container
$docker kill <container id>   /*to stop the container
$docker ps     
$docker start <container id>    /*to start the stopped container
$docker ps    /*lists started id
$docker rm -f $(docker ps -aq)    /*to del all running & stopped containers (a-all,
q-quiet (only display numeric ids),f-filter o/p) we can check it by starting the deleted containers, which gives error
```
4. Create a Dockerfile
    1. Base image as CentOS 7  
    2. Install Open JDk 8
    3. Add user/group  tomcat     
    4. Install tomcat
    5. CMD - start tomcat
    6. Build,run, ship/push
```ssh
$docker build -t tomcatjdk8 .    /* build docker image with tag
$docker tag tomcatjdk8:latest navatharaagi/tomcatjdk8:latest    /*docker tagging
$docker push navatharaagi/tomcatjdk8:latest   /* push image to our registry
```
