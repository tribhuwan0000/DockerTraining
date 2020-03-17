FROM  fedora
#  it will be the base image
MAINTAINER   ashutoshh@linux.com , 9509957594
# dev info  for people to connect
RUN  yum   install  httpd  -y
#  it will install  httpd
WORKDIR   /var/www/html/
#  this is changing  my current working directory to  documentroot of application server
COPY  .  .
#  copy  can only copy  data from current local location to docker image
EXPOSE  80
#  it will  tell docker  image  to use  80  port  for  application server
#CMD   httpd  -DFOREGROUND
#  it will start  parent process as  httpd  application server :wq
#  cmd  can be  replaced  by  docker  user
ENTRYPOINT   httpd  -DFOREGROUND
#  same as cmd  by  we can not replace it by argument
