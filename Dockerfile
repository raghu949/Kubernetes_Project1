FROM ubuntu:latest
MAINTAINER raghurama2@gmail.com
RUN sudo apt update
RUN sudo apt install -y openjdk11-jdk-headless 
CMD /bin/bash
RUN sudo apt install -y httpd
RUN sudo apt install -y zip
#RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html/
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
