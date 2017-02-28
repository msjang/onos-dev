#!/usr/bin/env bash

if ! [ -d ~/Applications ]; then
	mkdir ~/Downloads ~/Applications
	# cd ~/Downloads
	# wget -q http://archive.apache.org/dist/karaf/3.0.5/apache-karaf-3.0.5.tar.gz
	# wget -q http://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
	cd /vagrant_data/Downloads
	tar -zxf apache-karaf-3.0.5.tar.gz -C ../Applications/
	tar -zxf apache-maven-3.3.9-bin.tar.gz -C ../Applications/
fi
ls ~/Applications
echo "[NOTICE] Applications installed"


if ! [ -d ~/onos ]; then
	# git clone https://github.com/opennetworkinglab/onos
	git clone /vagrant_data/onos/.git ~/onos
fi
ls -d ~/onos
echo "[NOTICE] onos cloned"


if ! grep -q "onos" ~/.bashrc; then
	echo "" >> ~/.bashrc;
	echo ". ~/onos/tools/dev/bash_profile" >> ~/.bashrc;
	echo "" >> ~/.bashrc;
fi
echo "[NOTICE] ~/onos/tools/dev/bash_profile registered."


echo "[NOTICE] Provision complete!"
