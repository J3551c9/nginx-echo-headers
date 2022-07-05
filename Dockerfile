#FROM openresty/openresty:1.11.2.5-alpine
FROM mcr.microsoft.com/mirror/docker/library/nginx:1.20-alpine
EXPOSE 8080
ADD nginx.conf /etc/nginx/conf/nginx.conf

RUN chgrp -R 0 /etc/nginx/ && \
    chmod -R g=u /etc/nginx/

