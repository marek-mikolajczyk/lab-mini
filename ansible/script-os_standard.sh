#!/bin/bash

ansible-playbook -i ../inventory/vm/hosts roles-os_standard.yml -e @secrets.yml
