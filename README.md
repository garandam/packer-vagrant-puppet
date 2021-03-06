Packer-templates
======

Packer templates used to build base box images

Requirements
-----

Name        | min. Version  | 
------------|---------------|
[Packer]    | 0.7.5         | 
[Vagrant]   | 1.7.1         | 
[VirtualBox]| 4.30.20       | 

Usage
-----

### Building & working with the Box
```sh
$ packer build {template_name}.json
$ vagrant add box {box_name} packer_{...}.box
$ vagrant init {box_name}
$ vagrant up
```

	
```sh
### SAMPLE
$ packer build centos-7-x86_64.json
$ vagrant box add centos7 packer_virtualbox-iso_virtualbox.box
$ mkdir test_env
$ cd test_env/
$ vagrant init centos7
$ vagrant up
$ vagrant ssh
```

### VM settings

  - `root` password is set to `puppet`
  - `vagrant` account uses the [Vagrant project's insecure public key](https://github.com/mitchellh/vagrant/tree/master/keys)

### The easy way
  - Modify and try the `create_box.sh` ;-)

### Workaround with bridge problemes:
  - My bridge networkcard is defect and over NAT it's doesen't work with the http-Server, so I add the ks-git-url at the `{template_name}.json`

License
------
MIT


[Vagrant]:https://www.vagrantup.com/
[Packer]:https://www.packer.io/
[VirtualBox]:https://www.virtualbox.org/