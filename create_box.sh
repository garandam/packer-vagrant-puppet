#!/bin/bash
set -e
# set -o errexit
# trap 'exit' ERR

rm packer_virtualbox-iso_virtualbox.box || true
packer build centos-6.6-x86_64.json
vagrant box remove centos-6.6 || true
vagrant box add centos-6.6 packer_virtualbox-iso_virtualbox.box