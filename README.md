# ansible
new machine setup with docker configs for testing along the way

to test in a container
```
docker build -t ansible-builder .
docker run -it --rm --name some-name ansible-builder bash

ansible-playbook local.yml --ask-vault-pass
```

optionally use `-t ssh` to execute only the ssh task for instance

or to run directly:
(ansible will read local.yml)

```
ansible-pull -U https://github.com/cwebley/ansible
```

If trouble with ssh-key passphrases:

```
eval `ssh-agent -s`
ssh-add
```
