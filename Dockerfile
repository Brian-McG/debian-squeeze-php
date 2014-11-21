FROM debian:squeeze

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update
RUN apt-get install -y locales
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen en_US.UTF-8

ENV HOME /root
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV TZ Africa/Johannesburg

#Install Dependencies
RUN apt-get upgrade -y
RUN apt-get install -y build-essential autoconf
RUN apt-get install -y wget curl openssl socat mysql-client python
RUN apt-get install -y zlib1g zlib1g-dev libssl-dev libcurl4-openssl-dev libexpat1-dev gettext
RUN apt-get -y install libmysqlclient-dev
RUN apt-get -y install libxslt1-dev
RUN apt-get -y install libpq-dev
RUN apt-get -y install php5
RUN apt-get -y install phpunit


#Install SQL and Ruby
#ADD sql_install /tmp
#RUN chmod u+x /tmp/sqlInstall.sh
#RUN /tmp/sqlInstall.sh

