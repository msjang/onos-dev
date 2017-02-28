# ONOS DEV

## How to prepare

Install vagrant;
https://www.vagrantup.com/downloads.html

Install vagrant plugins
```
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-timezone
```

Initialize data directory
```
cd data/
./init.sh
```

Power on `dev-vm`
```
cd ../dev-vm/
vagrant up
vagrant ssh
```

Build ONOS
```
vagrant@onos-dev-vm:~$ cd onos
vagrant@onos-dev-vm:~/onos$ $ONOS_ROOT/tools/build/onos-buck build onos --show-output
...
The outputs are:
//tools/package:onos-package buck-out/gen/tools/package/onos-package/onos.tar.gz
```
