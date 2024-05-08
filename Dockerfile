# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Copy the static HTML file into Nginx's server directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
