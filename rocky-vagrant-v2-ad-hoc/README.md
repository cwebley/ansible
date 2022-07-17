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
vagrant init geerlingguy/rockylinux8
```
but it was updated with the content for this chapter

To start the VMs
```
vagrant up
```

To shutdown the VMs
```
vagrant halt
```

To Delete the VMs
```
vagrant destroy
```

To ssh into a VM
```
vagrant ssh <db|app1|app2>
```

To run an adhoc command for hostnames of the multi group
```
ansible multi -i hosts.ini -a "hostname"
```

Check the date of each server
```
ansible -i hosts.ini multi -a "date"
```

Setup tool for one server 

```
ansible -i hosts.ini db -m setup
```


