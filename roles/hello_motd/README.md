<!-- STATIC CONTENT START
Use this section for adding additional content to the README
This will not be overwritten by Docsible -->
# 📃 Role overview

<!-- STATIC CONTENT END -->
<!-- DOCSIBLE START -->
## hello_motd

```
Role belongs to example/demo
Namespace - example
Collection - demo
Version - 2.0.7
Repository - https://github.com/open-appdev-lab/demo-ansible-collection
```

Description: example role

| Field                | Value           |
|--------------------- |-----------------|
| Readme update        | 2025/12/26 |

### Defaults

**These are static variables with lower priority**

#### File: defaults/main.yml

| Var          | Type         | Value       |Choices    |Required    | Title       |
|--------------|--------------|-------------|-------------|-------------|-------------|
| [`hello_motd_friend_name`](defaults/main.yml#L3)   | str   | `John Doe` |  None  |   None  |  None |

<summary><b>🖇️ Full descriptions for vars in defaults/main.yml</b></summary>
<br>
<b>`hello_motd_friend_name`:</b> None
<br>
<br>

### Tasks

#### File: tasks/main.yml

| Name | Module | Has Conditions |
| ---- | ------ | --------- |
| Generate greeting and store result | `ansible.builtin.set_fact` | False |
| Store greeting in /tmp/motd | `ansible.builtin.copy` | False |

## Task Flow Graphs

### Graph for main.yml

```mermaid
flowchart TD
Start
classDef block stroke:#3498db,stroke-width:2px;
classDef task stroke:#4b76bb,stroke-width:2px;
classDef includeTasks stroke:#16a085,stroke-width:2px;
classDef importTasks stroke:#34495e,stroke-width:2px;
classDef includeRole stroke:#2980b9,stroke-width:2px;
classDef importRole stroke:#699ba7,stroke-width:2px;
classDef includeVars stroke:#8e44ad,stroke-width:2px;
classDef rescue stroke:#665352,stroke-width:2px;

  Start-->|Task| Generate_greeting_and_store_result0[generate greeting and store result]:::task
  Generate_greeting_and_store_result0-->|Task| Store_greeting_in__tmp_motd1[store greeting in  tmp motd]:::task
  Store_greeting_in__tmp_motd1-->End
```

## Playbook

```yml
# SPDX-License-Identifier: MIT-0
---
- name: Test MOTD role
  hosts: localhost
  remote_user: root
  roles:
    - hello_motd
...

```

## Playbook graph

```mermaid
flowchart TD
  hosts[localhost]-->|Role| hello_motd[hello motd]
```

## Author Information

Lucas Burigo

## License

MIT

## Minimum Ansible Version

2.1

## Platforms

No platforms specified.

<!-- DOCSIBLE END -->