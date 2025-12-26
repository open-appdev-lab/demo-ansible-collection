Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
<!-- DOCSIBLE START -->
## hello_motd

```
Role belongs to example/demo
Namespace - example
Collection - demo
```

Description: your role description

| Field                | Value           |
|--------------------- |-----------------|
| Readme update        | 2025/12/26 |






### Defaults

**These are static variables with lower priority**

#### File: defaults/main.yml

| Var          | Type         | Value       |Choices    |Required    | Title       |
|--------------|--------------|-------------|-------------|-------------|-------------|
| [friend_name](defaults/main.yml#L3)   | str   | `John Doe` |  None  |   None  |  None |
<summary><b>🖇️ Full descriptions for vars in defaults/main.yml</b></summary>
<br>
<b>friend_name:</b> None
<br>
<br>





### Tasks


#### File: tasks/main.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| Generate greeting and store result | demo_hello | False |
| store test in /etc/motd | copy | False |




## Playbook

```yml
#SPDX-License-Identifier: MIT-0
---
- hosts: localhost
  remote_user: root
  roles:
    - hello_motd

```


## Author Information
your name

#### License

license (GPL-2.0-or-later, MIT, etc)

#### Minimum Ansible Version

2.1

#### Platforms

No platforms specified.
<!-- DOCSIBLE END -->