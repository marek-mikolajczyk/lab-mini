#!/bin/bash

ansible-playbook -i ../inventory/vm/hosts -l tst1.marekexample.com roles-https-tst1.yml -e @secrets.yml
