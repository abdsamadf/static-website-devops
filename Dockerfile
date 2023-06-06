# use the latest nginx image from docker hub
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the current directory contents into the container at /usr/share/nginx/html
COPY . .

# Expose port 80 to the Docker host, so we can access it from the outside.
EXPOSE 80

# Start NGINX and keep it running in the foreground
CMD [ "nginx", "-g", "daemon off;"]