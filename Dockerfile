FROM centos:centos7
MAINTAINER Behzad Dastur <bdastur@cisco.com>

###########################################################
# Setup EPEL Repository and Install Ansible.
############################################################
RUN rpm -Uvh http://mirror.pnl.gov/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
RUN yum install ansible -y
RUN yum install -y ansible-openstack-modules

# Need to install openssh-clients due to problem with packages in EPEL repo.
RUN yum install openssh-clients

# For running ansible with password (--ask-pass), need to install sshpass
RUN yum install sshpass


