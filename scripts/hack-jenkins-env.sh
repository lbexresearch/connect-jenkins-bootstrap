#!/bin/bash

sed -ie 's#${MY_POD_IP}'"#${MY_POD_IP}#" /usr/share/jenkins/ref/config.xml.override
sed -ie 's#${MASTER_URL}'"#${MASTER_URL}#" /usr/share/jenkins/ref/config.xml.override
