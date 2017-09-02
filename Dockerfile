FROM centos:latest
MAINTAINER yujmo yujmo94@gmail.com
RUN rm -rf /etc/yum.repos.d/CentOS-[DSfCMV]* && yum clean all && yum update -y
COPY consul /consul
RUN chmod +x /consul && ln -s /consul /usr/sbin/
EXPOSE 8300 8500 8600 8301 8302 8303 8304 8305
