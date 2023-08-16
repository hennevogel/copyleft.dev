FROM registry.opensuse.org/opensuse/httpd:latest 

RUN mkdir /var/log/apache2

EXPOSE 6000 
ENTRYPOINT ["httpd", "-DFOREGROUND", "-c", "Listen 6000", "-c", "ServerName copyleft.dev", "-c", "GlobalLog /dev/stdout common", "-c", "ErrorLog /dev/stderr"]

