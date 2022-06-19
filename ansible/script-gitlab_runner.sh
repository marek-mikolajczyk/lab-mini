#!/bin/bash

ansible-playbook -i ../inventory/vm/hosts roles-gitlab_runner.yml -e @secrets.yml --start-at-task="register shared runner"
