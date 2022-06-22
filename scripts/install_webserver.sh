#!/bin/bash

dnf install -y httpd
firewall-cmd --add-service=http --permanent
firewall-cmd --reload
systemctl enable --now httpd
