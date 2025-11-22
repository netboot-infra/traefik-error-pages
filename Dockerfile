FROM nginxinc/nginx-unprivileged:latest

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./html /usr/share/nginx/error-pages