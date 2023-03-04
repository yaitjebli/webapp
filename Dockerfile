FROM ubuntu
MAINTAINER test-easytraining
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/yaitjebli/webapp.git
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
