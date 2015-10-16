#!/bin/bash

echo "start - base"
# Update repos
yum update -y --skip-broken

# Other tools
yum groupinstall -y "Development Tools"
yum install -y sudo tree vim wget git ruby man curl bind-utils.x86_64

# enable tty to run sudo
sed -i 's/^\(Defaults.*requiretty\)/#\1/' /etc/sudoers

echo "end - base"