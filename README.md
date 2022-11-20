# Website Deployment Automation Using NGINX
Project is meant to automate a simple static website deployment. That is done in two independent ways - using Ansible or Docker. Documentation for each of the sub-projects is located in the appropriate folders.

The idea is, that a web developer would progressively update a content of github repository, hosting the website source code. And a server, providing the web to the internet, would be able to update the content with minimal or completely without human interaction. Deploying a new website is as easy as changing the source repository in the project and running it.

Project functionality was tested on clean VMs running Ubuntu 22.04.1 and Debian 11.5.0.
