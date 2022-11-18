FROM ubuntu:latest

RUN apt-get -qq update

RUN apt-get -y install nginx > /dev/null
RUN apt-get -y install git> /dev/null

RUN rm -r /var/www/html/*

WORKDIR /var/www/html

ARG CACHEBUST=1

ARG repo
RUN git clone $repo .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
