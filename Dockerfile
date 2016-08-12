FROM rhel7

COPY epel-release-latest-7.noarch.rpm $HOME

RUN rpm -ivh epel-release-latest-7.noarch.rpm && yum install mongodb-server mongodb -y && yum clean all

RUN mkdir -p /var/lib/mongodb/data

EXPOSE 27017

CMD '/usr/bin/mongod --dbpath /var/lib/mongodb/data'
