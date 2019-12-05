[![Build Status](https://travis-ci.org/travis-ci/travis-web.svg?branch=ce-find-order-dependent-tests)]
(https://travis-ci.com/ramonesc3po/ansible-role-pc-setup/builds/139612111)

Role pc-setup
=========
I created this role so when I change a new computer I can install my  programs every time  I need it.
Other reasons to take control of what I installed in my computer and implementing security rules and scripts using this role.

Requirements
------------
- Ansible Latest version installed.
- Profile user

Role Variables
--------------
- install_packages: ""
- install_pip_packages: ""
- timezone: ""
- profile_user: ""

Example Playbook
----------------
```yaml
- hosts: localhost
  vars:
    profile_user: "someone"
    install_packages:
      - htop
      - curl
      - awscli

  roles:
    - role: ramonesc3po.ansible_role_pc_setup
      become: yes
```

Author Information
------------------
Ramon C3po
