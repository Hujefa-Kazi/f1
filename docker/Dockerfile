FROM ubuntu:20.04
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
Run apt-get install apache2 -y
COPY index.html /usr/local/apache2/htdocs/index.html
EXPOSE 80
CMD [ "apache2ctl", "-D", "FOREGROUND" ]
