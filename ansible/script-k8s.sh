#!/bin/bash

ansible-playbook -i ../inventory/vm/hosts -l k8s roles-k8s.yml -e @secrets.yml
