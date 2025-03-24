# Use Ubuntu as base image
FROM ubuntu:latest

# Update the package list
RUN apt-get update -y

# Install required packages: Apache, wget, unzip
RUN apt-get install -y apache2 wget unzip

# Create the web root directory
RUN mkdir -p /var/www/html

# Download the website template
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page289/zon.zip -O /tmp/zon.zip

# Unzip the downloaded file
RUN unzip /tmp/zon.zip -d /tmp/

# Move the extracted website files to the Apache web directory
RUN cp -r /tmp/zon-html/* /var/www/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]

