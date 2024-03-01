#!/bin/bash

# Build the app without cache
docker-compose build --no-cache

# Check if the build was successful
if [ $? -eq 0 ]; then
	    echo "Build successful."
    else
	        echo "Build failed."
fi

