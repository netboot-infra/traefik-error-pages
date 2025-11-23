FROM docker.io/nginxinc/nginx-unprivileged:latest

# Copy HTML files into Nginx default folder
USER root
RUN rm -rf /usr/share/nginx/html/*
COPY html/ /usr/share/nginx/html/
USER 101

# Expose port 8080
EXPOSE 8080

# Default command to run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
