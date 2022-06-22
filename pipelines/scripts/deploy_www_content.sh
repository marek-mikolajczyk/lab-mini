#!/bin/bash

echo 'pipeline result <b>v002</b><p>' | tee  /var/www/html/index.html
echo "<i>$MY_MESSAGE</i><p>" | tee -a /var/www/html/index.html
echo "<i>environment $MY_ENVIRONMENT</i>" | tee -a /var/www/html/index.html
echo "for project $CI_PROJECT_NAME by $CI_RUNNER_DESCRIPTION at $CI_PIPELINE_CREATED_AT<p>" | tee -a /var/www/html/index.html
echo "hosted on $GITLAB_PLATFORM" | tee -a /var/www/html/index.html
