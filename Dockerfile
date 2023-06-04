# Use a base image
FROM nginx:latest

# Create the "aidana" user
RUN useradd -ms /bin/bash aidan

# Set the user to "aidana"
USER aidan

# Copy the default app files to the appropriate location
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose the container's port
EXPOSE 80

# Start the nginx server when the container runs
CMD ["nginx", "-g", "daemon off;"]
