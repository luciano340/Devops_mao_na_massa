#!/bin/bash

install_log="/root/install.log"
error_log="/root/install.err"

echo "Installing apache and setting setup"
yum install -y httpd >> ${install_log} 2>> ${error_log}
cp -prv /vagrant/html/* /var/www/html/ >> ${install_log} 2>> ${error_log}
systemctl start httpd.service >> ${install_log} 2>> ${error_log}