#!/bin/bash

bash /sonarqube/sonarqube-9.4.0.54424/bin/linux-x86-64/sonar.sh start

watch /sonarqube/sonarqube-9.4.0.54424/logs/README.txt
