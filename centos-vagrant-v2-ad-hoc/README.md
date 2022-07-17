# Ansible 101 ep 2: Ad hoc
## Prereqs
### Install Vagrant
```
brew install --cask vagrant
```

### Install Virtualbox
[Virtualbox's website](https://virtualbox.org)


Vagrantfile originally was created with 
```
vagrant init geerlingguy/centos7
```
but it was updated with the content for this chapter

To start the VM
```
vagrant up
```

To shutdown the VM
```
vagrant halt
```

To Delete the VM
```
vagrant destroy
```

To ssh into the VM
```
vagrant ssh
```

To see ssh info
```
vagrant ssh-config
```

To run this and check the hostname
```
ansible multi -i inventory -a "hostname"
```
