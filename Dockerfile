# Use official NGINX base image.
FROM nginx:latest

# Copy custom NGINX configuration file.
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy HTML file for NGINX to serve.
COPY ./nginx/index.html /usr/share/nginx/html/index.html

# Expose port that NGINX listens on.
EXPOSE 80
