#!/bin/bash

curl https://cdn.shopify.com/s/files/1/0595/9739/0033/files/polono_pl60_label_printer_linux_driver_v1.2.0.tar.gz -o polono_driver.tar.gz

mkdir polono-driver
tar xzf polono_driver.tar.gz --directory polono-driver
cd polono-driver
cd $(ls -d */|head -n 1)
sed -i 's/$INSTALL -s/$INSTALL/g' install
sed -i '/if \[ -z \$RPMBUILD \]/,$d' install
#sed '/if [ -z $RPMBUILD ]/Q' install
