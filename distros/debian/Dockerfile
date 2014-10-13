FROM debian:wheezy

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install htop supervisor curl git mercurial lsof wget vim
RUN apt-get clean

# sshd
RUN apt-get -y install openssh-server
RUN mkdir /var/run/sshd
RUN chmod 0755 /var/run/sshd
ADD misc/supervisor_conf.d/sshd.conf /etc/supervisor/conf.d/
RUN sed -i -e s/\#PasswordAuthentication.*/PasswordAuthentication\ no/ /etc/ssh/sshd_config

# new-relic
RUN echo deb http://apt.newrelic.com/debian/ newrelic non-free >> /etc/apt/sources.list.d/newrelic.list
RUN wget -O- https://download.newrelic.com/548C16BF.gpg | apt-key add -
RUN apt-get update
RUN apt-get install newrelic-sysmond
RUN nrsysmond-config --set license_key="NOLICENSEKEYNOLICENSEKEYNOLICENSEKEYNOLI"
ADD misc/newrelic.ini /
ADD misc/supervisor_conf.d/newrelic.conf /etc/supervisor/conf.d/

# startup
ADD misc/startup.sh /
RUN chmod 755 /startup.sh

EXPOSE  22 

CMD ["/startup.sh"]
