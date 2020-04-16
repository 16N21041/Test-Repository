From ubuntu
MAINTAINER ketan
RUN apt-get update
RUN apt-get install nginx -y
RUN rm -f /etc/nginx/sites-available/default.conf
RUN rm -f /etc/nginx/sites-enabled/default.conf
RUN apt-get install apt-utils wget vim curl net-tools -y
EXPOSE 80
CMD [ "nginx", "-g", "daemon off:" ]
