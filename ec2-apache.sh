#!/bin/bash
sudo su
yum -y update
yum -y install httpd
echo "<h1> Hello AWS  </h1> <br /> <h2>$(hostname -f)</h2>" >> /var/www/html/index.html
sudo systemctl enable httpd
sudo systemctl start httpd
