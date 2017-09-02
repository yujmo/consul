FROM centos:latest
MAINTAINER yujmo yujmo94@gmail.com
RUN rm -rf /etc/yum.repos.d/CentOS-[DSfCMV]* \
      && yum clean all && yum update -y && yum install wget -y \
      && wget https://github.com/hashicorp/consul/archive/v0.9.2.tar.gz
