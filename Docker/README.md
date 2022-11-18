# Website Deployment Using Docker with NGINX
Website deployment automation using Docker. Program clones a website from specified github repository and runs it on server using NGINX (for testing purposes used localhost). Makes it easy to change website source or update website files. Caching is used, therefore updating isn't too slow.

## How to run
1. You need to have docker and docker-compose installed. It can be done with:
```bash
apt install docker.io && apt install docker-compose
```
2. Navigate to the project folder
3. Make run.sh executable by:
```bash
chmod 755 run.sh
```
4. Run:
```bash
./run.sh
```
5. In Your browser, navigate to http://localhost:8080
6. If content of github repository changes, using command in step 3 will also update the webpage on NGINX.

## Expected changes to be usable
1. Configure deployment to remote host (can be done in many ways).
2. In run.sh change the "repository" variable.
