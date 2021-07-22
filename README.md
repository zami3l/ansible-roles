# Ansible Collection - ansible.sysadmin

Description
---
This collection is intended to provide examples that can be reused for sysadmin.

List of roles available
---
- upgrade all packages
- ssh

Using the collection
---

### Installation
Use the script `build_install_collection.sh` if you have clone the repo git.

or

If you are using the package, use `ansible-galaxy collection install ansible-sysadmin-[version].tar.gz`

### Example
Import playbook.yml :

```yaml
---
- name: Example to use collection
  collections:
  - ansible.sysadmin

  roles:
  - ssh
```

Author
---
Zami3l
