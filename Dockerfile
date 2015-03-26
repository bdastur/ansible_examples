FROM centos:centos7
MAINTAINER Behzad Dastur <bdastur@cisco.com>

###########################################################
# Setup EPEL Repository and Install Ansible.
############################################################
RUN rpm -Uvh http://mirror.pnl.gov/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
RUN yum install ansible -y
RUN yum install -y ansible-openstack-modules


