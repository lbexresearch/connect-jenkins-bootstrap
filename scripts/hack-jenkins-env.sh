#!/bin/bash

sed -ie 's/${MY_POD_IP}'"/${MY_POD_IP}/" /usr/share/jenkins/ref/config.xml.override
sed -ie 's/${MY_HOST_IP}'"/${MY_HOST_IP}/" /usr/share/jenkins/ref/config.xml.override