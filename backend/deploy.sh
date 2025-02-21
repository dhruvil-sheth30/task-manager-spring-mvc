#!/bin/bash

# Stop existing application if running
pid=$(pgrep -f task-manager)
if [ -n "$pid" ]; then
    kill $pid
fi

# Set environment variables
export DB_URL="${{ secrets.DB_URL }}"
export DB_USERNAME="${{ secrets.DB_USERNAME }}"
export DB_PASSWORD="${{ secrets.DB_PASSWORD }}"

# Start application
nohup java -jar task-manager-0.0.1-SNAPSHOT.jar > app.log 2>&1 & 