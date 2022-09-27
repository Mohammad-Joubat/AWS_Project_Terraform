#!/bin/bash
sudo su
yum udate -y
yum install httpd php -y
sudo service httpd start