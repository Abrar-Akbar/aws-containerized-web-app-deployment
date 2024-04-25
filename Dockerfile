# Use the official Nginx image as the base
FROM nginx:alpine

# Set the maintainer information
LABEL maintainer="Abrar Akbar"

# Set the working directory inside the container
WORKDIR /app

# Copy the contents of the current directory into the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 to allow external access to the Nginx server
EXPOSE 80
