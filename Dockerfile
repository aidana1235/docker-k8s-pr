# Use a base image
FROM nginx:latest

# Create the "devops" group
RUN addgroup devops

# Create the "aidan" user and add to the "devops" group
RUN adduser aidan -G devops --disabled-password

# Switch to the "aidan" user
USER aidan

# Copy the default app files to the appropriate location
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose the container's port
EXPOSE 80

# Start the nginx server when the container runs
CMD ["nginx", "-g", "daemon off;"]
