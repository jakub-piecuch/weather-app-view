FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the static files and images to the container
COPY index.html .
COPY index.js .
COPY style.css .
COPY images/ images/

# Install http-server globally
RUN npm install -g http-server

# Set the command to start the http-server and serve the static files
CMD ["http-server", "-p", "3050", "."]