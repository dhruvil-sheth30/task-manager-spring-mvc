#!/bin/bash
# Stop existing application
pid=$(pgrep -f task-manager)
if [ -n "$pid" ]; then
    kill $pid
fi

# Set environment variables
export DB_URL=postgresql://postgres:Supabase@12345@db.sfojouinddmruvxrejzs.supabase.co:5432/postgres
export DB_USERNAME=postgres
export DB_PASSWORD=Supabase@12345

# Start application
nohup java -jar task-manager-0.0.1-SNAPSHOT.jar > app.log 2>&1 & 