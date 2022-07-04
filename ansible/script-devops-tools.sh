#!/bin/bash

ansible-playbook -i ../inventory/vm/hosts -l runner roles-devops-tools.yml -e @secrets.yml
