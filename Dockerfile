FROM rhel7

COPY epel-release-latest-7.noarch.rpm $HOME

RUN rpm -ivh epel-release-latest-7.noarch.rpm && yum install mongodb-server mongodb && yum clean all

EXPOSE 27017

CMD /usr/bin/mongod 
