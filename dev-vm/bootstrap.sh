#!/usr/bin/env bash

cp /etc/apt/sources.list /etc/apt/sources.list.bak
sed -i 's/gb.archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
sed -i 's/us.archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
sed -i 's/security.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
apt-get -y -qq update

apt-get -y -q install vim tree wget curl unzip zip zerofree
apt-get -y -q install git-core
# apt-get -q -y install openssh-server
# apt-get -q -y install git git-review
# apt-get -q -y install build-essential checkinstall libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
# apt-get -q -y install python-dev python-pip python3-dev python3-pip

apt-get -y -q install software-properties-common
add-apt-repository ppa:webupd8team/java -y
apt-get -y -qq update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
apt-get -y -qq install oracle-java8-installer oracle-java8-set-default > /dev/null 2>&1
