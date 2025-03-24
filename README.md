This Dockerfile is used to deploy a website inside a Docker container using Apache as the web server.

🔹 Key Functions:
✅ Uses Ubuntu as the base image
✅ Installs Apache (httpd), wget, and unzip
✅ Creates the /var/www/html directory (default web root for Apache)
✅ Downloads a website template from a given URL
✅ Extracts the template and moves it to the Apache web directory
✅ Exposes port 80 to allow web traffic
✅ Starts the Apache server to serve the website
