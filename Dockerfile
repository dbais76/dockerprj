FROM docker.io/centos
RUN yum install httpd -y && \
    echo "Hello from Daleep" > /var/www/html/index.html && \
    sed -i 's/Listen 80/Listen 8080/g' /etc/httpd/conf/httpd.conf
EXPOSE 8080
CMD ["httpd", "-D", "FOREGROUND"]
