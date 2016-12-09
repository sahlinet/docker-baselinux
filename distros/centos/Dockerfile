FROM centos:centos7

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && yum update -y && yum upgrade -y &&  yum install -y git mercurial && yum clean all -y

# startup
RUN yum install -y python-setuptools
RUN easy_install pip

# new-relic
RUN rpm -Uvh https://yum.newrelic.com/pub/newrelic/el5/x86_64/newrelic-repo-5-3.noarch.rpm
RUN yum install newrelic-sysmond -y
RUN pip install newrelic
RUN nrsysmond-config --set license_key="NOLICENSEKEYNOLICENSEKEYNOLICENSEKEYNOLI"

ADD misc/startup.sh /startup.sh
RUN chmod 755 /startup.sh

# EXPOSE  22

CMD ["/startup.sh"]
