FROM centos:centos7

RUN yum update -y
RUN yum upgrade -y
RUN yum install -y htop curl git mercurial lsof wget vim
RUN yum clean all -y

# sshd
RUN yum install -y openssh-server
#RUN mkdir /var/run/sshd
#RUN chmod 0755 /var/run/sshd
ADD misc/supervisor_conf.d/sshd.conf /etc/supervisor/conf.d/
RUN sed -i -e s/\#PasswordAuthentication.*/PasswordAuthentication\ no/ /etc/ssh/sshd_config
RUN ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key && ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key

# startup
RUN yum install -y python-setuptools
RUN easy_install pip
RUN pip install supervisor 
RUN echo_supervisord_conf > /etc/supervisord.conf
RUN printf "[include]\nfiles = /etc/supervisor/conf.d/*" >> /etc/supervisord.conf

# new-relic
RUN rpm -Uvh https://yum.newrelic.com/pub/newrelic/el5/x86_64/newrelic-repo-5-3.noarch.rpm
RUN yum install newrelic-sysmond -y
RUN pip install newrelic
RUN nrsysmond-config --set license_key="NOLICENSEKEYNOLICENSEKEYNOLICENSEKEYNOLI"
ADD misc/supervisor_conf.d/newrelic.conf /etc/supervisor/conf.d/

ADD misc/startup.sh-centos /startup.sh
RUN chmod 755 /startup.sh

EXPOSE  22 

CMD ["/startup.sh"]
