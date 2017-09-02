FROM centos:latest
MAINTAINER yujmo yujmo94@gmail.com
RUN rm -rf /etc/yum.repos.d/CentOS-[DSfCMV]* && yum clean all && yum update -y
COPY consul /consul
RUN chmod +x /consul && ln -s /consul /usr/sbin/
