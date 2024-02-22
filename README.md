[![Build Status](https://travis-ci.com/ramonesc3po/ansible-role-pc-setup.svg?branch=master)](https://travis-ci.com/ramonesc3po/ansible-role-pc-setup)

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

Roadmap
-------
- setup polybar
- custom widgets (music player, notifications)
- fix powershell-line
- setup xrandr (xrandr --output DP-1-1 --auto --right-of DP-1-2 && xrandr --output eDP-1 --off) switch screens multiple monitor by shortcut
- setup keyboard layout ( exec "setxkbmap -layout eu") switch keyboards layout 
- add i3 repositories for debian and ubuntu (https://i3wm.org/docs/repositories.html)

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
