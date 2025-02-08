# Use an official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy your HTML file into the appropriate directory in the container
COPY ./app/ /usr/share/nginx/html/


# Expose port 80 to the outside world
EXPOSE 80
