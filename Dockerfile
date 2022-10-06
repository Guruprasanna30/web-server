FROM httpd
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
RUN mkdir -p /usr/local/apache2/ssl
COPY ./newkey.pem /usr/local/apache2/ssl/newkey.pem
COPY ./apache-cert.pem /usr/local/apache2/ssl/apache-cert.pem
