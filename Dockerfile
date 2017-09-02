FROM centos:latest
MAINTAINER yujmo yujmo94@gmail.com
RUN rm -rf /etc/yum.repos.d/CentOS-[DSfCMV]* && yum clean all 
COPY consul /consul
RUN chmod +x /cosul
