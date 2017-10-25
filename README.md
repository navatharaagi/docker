# docker
https://www.docker.com/sites/default/files/Docker_CheatSheet_08.09.2016_0.pdf
1.create docker account / Install docker on mac
After docker installation,start docker
2.Pull CentOS 7 Image from docker registry
$docker pull centos:7    /*pulls centos 7 image,  when docker in running state
3.Docker run centOs 7 Image
$docker images     /*gives image id and details which is constant
$docker run -id <image id>    /*to run image
$docker ps      /*lists the running containers with unique ids after every docker run
$docker exec -it  <container id>  /bin/bash     /*to login to container
#exit     
