#!/bin/bash
# run as root.  Must have 4 gig memory.
# optionall you could download the virtual appliance: 
# https://access.redhat.com/products/red-hat-enterprise-virtualization/get-started

subscription-manager repos --disable=*
subscription-manager repos --enable=rhel-6-server-rpms
subscription-manager repos --enable=rhel-6-server-supplementary-rpms
subscription-manager repos --enable=rhel-6-server-rhevm-3.5-rpms
subscription-manager repos --enable=jb-eap-6-for-rhel-6-server-rpms

yum update
yum install rhevm
