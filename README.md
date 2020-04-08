### This is my practice of Ansible based on [Official BestPractice](https://docs.ansible.com/ansible/latest/user_guide/playbooks_best_practices.html)

# Examples

### All Roles for All hosts
```bash
ansible-playbook -i inventory/production/hosts playbook.yml
```

### selected Roles for All hosts
```bash
ansible-playbook -i inventory/production/hosts playbook.yml --tags chrony
```

### All Roles for selected Groups
```bash
ansible-playbook -i inventory/production/hosts playbook.yml --limit web
```

# Directory

```
.
├── inventory
│   ├── production
│   │   ├── group_vars
│   │   │   ├── all.yml
│   │   │   ├── app.yml
│   │   │   ├── db.yml
│   │   │   └── web.yml
│   │   ├── hosts
│   │   └── host_vars
│   │       └── webserver2.yml
│   └── staging
│       ├── group_vars
│       │   ├── all.yml
│       │   ├── app.yml
│       │   ├── db.yml
│       │   └── web.yml
│       ├── hosts
│       └── host_vars
├── playbook.yml
├── README.md
└── roles
    └── common
        ├── create_directory
        │   ├── tasks
        │   │   └── main.yml
        │   └── tests
        │       ├── inventory
        │       └── test.yml
        ├── install_packages
        │   ├── defaults
        │   │   └── main.yml
        │   ├── tasks
        │   │   └── main.yml
        │   └── tests
        │       ├── inventory
        │       └── test.yml
        └── set_chrony
            ├── defaults
            │   └── main.yml
            ├── handlers
            │   └── main.yml
            ├── tasks
            │   └── main.yml
            ├── templates
            │   └── chrony.j2
            └── tests
                ├── inventory
                └── test.yml

22 directories, 26 files
```
