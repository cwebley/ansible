# ansible
new machine setup

to test in a container
```
docker build -t ansible-builder .
docker run -it --rm --name some-name ansible-builder bash

ansible-playbook local.yml
```

or to run directly:
(ansible will read local.yml)

```
ansible-pull https://github.com/cwebley/ansible
```
