#!/bin/bash

ansible-playbook -i ../inventory/vm/hosts roles-workstation.yml -e @secrets.yml  -vvv
