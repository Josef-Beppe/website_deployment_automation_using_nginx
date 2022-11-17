# Website Deployment Using Ansible with NGINX

## How to run
1. You need to have ansible installed. It can be done with:
```bash
apt install ansible
```
2. Navigate to project folder
3. Run:
```bash
ansible-playbook site.yml
```


In inventory.ini change webserver.example.com for hostname recognized by DNS.
In site.yml delete first two lines and uncomment -hosts: webservers
In role/webserver/vars/main.yml

config can be used the same with git
automation tested with watch command
