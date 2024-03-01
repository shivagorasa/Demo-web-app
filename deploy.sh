#!/bin/bash

# Check if an argument is provided
if [ -z "$1" ]; then
	    echo "Usage: $0 <target>"
	        echo "Specify 'dev' or 'prod' as the target."
		    exit 1
fi

# Check the target argument
if [ "$1" == "dev" ]; then
	    # Tag the built image for the dev repository on Docker Hub
	        docker tag "$(docker images -q | head -n 1)" shivagorasa/dev:latest
		    # Replace 'yourusername' with your actual Docker Hub username.
		        docker push shivagorasa/dev:latest
			    # Push the tagged image to the dev repository on Docker Hub

			        docker run -d -p 8082:8082 shivagorasa/dev:latest
					
			elif [ "$1" == "prod" ]; then
				    # Tag the built image for the prod repository on Docker Hub
				        docker tag "$(docker images -q | head -n 1)" shivagorasa/prod:latest
					    # Replace 'yourusername' with your actual Docker Hub username.
					        docker push shivagorasa/prod:latest
						    # Push the tagged image to the prod repository on Docker Hub
						        docker run -d -p 8082:8082 shivagorasa/prod:latest
						else
							    echo "Invalid target. Specify 'dev' or 'prod'."
							        exit 1
fi

