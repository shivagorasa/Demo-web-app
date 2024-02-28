# Use the official Nginx image as the base image
FROM nginx:1.19.10

# Copy the Nginx configuration file for your web app
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your web application files into the Nginx document root
COPY . /var/www/html

WORKDIR /var/www/html

# Expose port 80 to the outside world
EXPOSE 8082

CMD ["nginx", "-g", "daemon off;"]

