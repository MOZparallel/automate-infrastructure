#!/bin/bash
# This script runs when the EC2 instance launches

# Update packages
yum update -y

# Install basic utilities (optional)
yum install -y wget curl git

# Create a simple file with project name
echo "Welcome to the ${project_name} project!" > /home/ec2-user/welcome.txt

# Example: start a simple web server
yum install -y httpd
systemctl start httpd
systemctl enable httpd

# Optional: write a message to web page
echo "<h1>Welcome to ${project_name}!</h1>" > /var/www/html/index.html
