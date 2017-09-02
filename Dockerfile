FROM centos:latest
MAINTAINER yujmo yujmo94@gmail.com
RUN rm -rf /etc/yum.repos.d/CentOS-[DSfCMV]* && yum clean all && yum update -y && yum install go git -y \
      && git clone https://github.com/hashicorp/consul.git && cd consul && make bootstrap && make dev 
