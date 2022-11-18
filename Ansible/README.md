# Website Deployment Using Ansible with NGINX
Implementation of automation using Ansible. Program clones a website from specified github repository and runs it on server using NGINX (for testing purposes used localhost). Makes it easy to change website source or update website files.
The file structure was made based on the official ansible role directory structure: https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html

## How to run
1. You need to have ansible installed. It can be done with:
```bash
apt install ansible
```
2. Navigate to the project folder
3. Run:
```bash
ansible-playbook site.yml
```
5. In Your browser, navigate to http://localhost
4. If content of github repository changes, using command in step 3 will also update the webpage on NGINX. Command can run in the background once in a while and the update will happen automatically (tested with "watch" command).

## Expected changes to be usable
1. In inventory.ini change webserver.example.com for hostname recognized by DNS. You will also need to configure ssh to connect to the server.
2. In site.yml delete the first two lines and uncomment "-hosts: webservers".
3. In roles/webserver/vars/main.yml change the necessary variables (including repository).
4. NGINX configuration is now hardcoded in roles/webserver/tasks/files/nginx.conf.j2, but could be made to work the same way as the website files and be changeable through github using git.

## Additional resources
https://www.redhat.com/sysadmin/deploying-static-website-ansible \
https://www.digitalocean.com/community/tutorials/how-to-deploy-a-static-html-website-with-ansible-on-ubuntu-20-04-nginx \
https://www.serverlab.ca/tutorials/dev-ops/automation/how-to-use-ansible-to-deploy-your-website/ \
https://graspingtech.com/ansible-nginx-static-site/
