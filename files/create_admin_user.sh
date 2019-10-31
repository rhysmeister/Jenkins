#!/bin/bash

set -e;
set -u;

PASS=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword);
echo "jenkins.model.Jenkins.instance.securityRealm.createAccount(\"admin\", \"$PASS\")" | sudo java -jar /var/cache/jenkins/war/WEB-INF/jenkins-cli.jar -auth admin:$PASS -s http://127.0.0.1:8080/ groovy =
touch jenkins_admin_user.success;
