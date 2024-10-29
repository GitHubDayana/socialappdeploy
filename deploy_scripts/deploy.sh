#!/bin/bash
cd /home/ec2-user/social-app

# Stop and remove any existing Docker container named "social-app"
docker stop social-app || true
docker rm social-app || true

# Build and run the new Docker container
docker build -t social-app .
docker run -d --name social-app -p 80:3000 social-app
