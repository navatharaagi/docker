# docker
https://www.docker.com/sites/default/files/Docker_CheatSheet_08.09.2016_0.pdf
1. Install docker on mac & create docker account
- After docker installation,start docker
2. Pull CentOS 7 Image from docker registry
```ssh
$docker pull centos:7    /*pulls centos 7 image,when docker in running state
```
3. Docker run centOs 7 Image
```ssh
$docker images     /*gives image id and details which is unique
$docker run -id <image id>    /*to run image
$docker ps      /*lists the running containers with unique ids after every docker run
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
