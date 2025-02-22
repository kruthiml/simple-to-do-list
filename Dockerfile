# Dockerfile for Simple To-Do List App
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy application files to the container
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY images /usr/share/nginx/html/images/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
 
