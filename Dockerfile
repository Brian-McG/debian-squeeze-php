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
apt-get install -y php-pear
apt-get install -y php5-dev
pear upgrade pear
pear channel-discover pear.phpunit.de
pear config-set auto_discover 1
  # Install Test Dependencies
pear install --force Archive_Tar-1.3.10
pear install --force Config-1.10.11
pear install --force Crypt_CBC-1.0.0
pear install --force Crypt_GPG-1.1.1
pear install --force Math_BigInteger-1.0.0
pear install --force Net_SMTP-1.4.2
pear install --force Net_URL-1.0.15
pear install --force SOAP-0.12.0
pear install --force Archive_Tar-1.3.10
pear install --force Config-1.10.11
pear install --force Crypt_CBC-1.0.0
pear install --force Crypt_GPG-1.1.1
pear install --force Math_BigInteger-1.0.0
pear install --force Net_SMTP-1.4.2
pear install --force Net_URL-1.0.15
pear install --force SOAP-0.12.0
pear install --force DB-1.7.13
pear install --force HTTP-1.4.1
pear install --force HTTP_Request-1.4.4
pear install --force HTTP_Session-0.5.6
pear install --force Mail-1.2.0
pear install --force Mail_mimeDecode-1.5.0
pear install --alldeps --force pear.phpunit.de/PHPUnit-3.7.22
pecl install phpunit/test_helpers



#Install SQL and Ruby
#ADD sql_install /tmp
#RUN chmod u+x /tmp/sqlInstall.sh
#RUN /tmp/sqlInstall.sh
