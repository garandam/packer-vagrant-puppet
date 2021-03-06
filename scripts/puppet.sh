#!/bin/bash

echo "start - puppet"
# Install Puppet repo
rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
# rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm

# Puppet install
yum install -y puppet

# Show Puppet version
printf 'Puppet ' ; puppet --version

# required_modules
puppet module install puppetlabs-stdlib --modulepath=/tmp/packer-puppet-masterless/module-0 >/dev/null 2>&1
puppet module install puppetlabs-concat --modulepath=/tmp/packer-puppet-masterless/module-0 >/dev/null 2>&1
puppet module install saz-sudo --modulepath=/tmp/packer-puppet-masterless/module-0 >/dev/null 2>&1
puppet module install saz-ssh --modulepath=/tmp/packer-puppet-masterless/module-0 >/dev/null 2>&1

echo "end - puppet"