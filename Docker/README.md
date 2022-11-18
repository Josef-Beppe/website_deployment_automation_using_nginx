# Website Deployment Using Docker with NGINX
Website deployment automation using Docker. Program clones a website from specified github repository and runs it on server using NGINX (for testing purposes used localhost). Makes it easy to change website source or update website files.

## How to run
1. You need to have docker and docker-compose installed. It can be done with:
```bash
apt install docker.io && apt install docker-compose
```
2. Navigate to project folder
3. Run:
```bash
./run.sh
```
4. If content of github repository changes, using command in step 3 will also update the webpage on NGINX. Command can run in the background once in a while and the update will happen automatically (tested with watch command).

## Expected changes to be usable
1. Connect to your server (probably by configuring ssh).
2. In site.yml delete the first two lines and uncomment "-hosts: webservers".
3. In roles/webserver/vars/main.yml change the necessary variables (including repository).
4. NGINX configuration is now hardcoded in roles/webserver/tasks/files/nginx.conf.j2, but could be made to work the same way as the website files and be changeable through github using git.

## Additional resources
https://www.redhat.com/sysadmin/deploying-static-website-ansible \
https://www.digitalocean.com/community/tutorials/how-to-deploy-a-static-html-website-with-ansible-on-ubuntu-20-04-nginx \
https://www.serverlab.ca/tutorials/dev-ops/automation/how-to-use-ansible-to-deploy-your-website/ \
https://graspingtech.com/ansible-nginx-static-site/
