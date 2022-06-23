#!/bin/bash

ansible-playbook -i ../inventory/vm/hosts -l devops roles-devops.yml -e @secrets.yml
