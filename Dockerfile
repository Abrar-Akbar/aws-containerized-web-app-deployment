# Use the official Nginx image as the base
FROM nginx:alpine

# Set the maintainer information
LABEL maintainer="Abrar Akbar <abrarakbar623@gmial.com>"

# Set the working directory inside the container
WORKDIR /app

# Copy the contents of the current directory into the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 to allow external access to the Nginx server
EXPOSE 80
# Add health check for container health monitoring
HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget --quiet --tries=1 --spider http://localhost || exit 1

# Configure Nginx logging
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
  && ln -sf /dev/stderr /var/log/nginx/error.log

# Set environment variables for customizable configurations
ENV NGINX_PORT=80

# Add error handling configurations
COPY nginx.conf /etc/nginx/nginx.conf
