# Use the latest LTS version of Node.js as the base image
FROM node:14

# Create a working directory for the application
WORKDIR /app

# Copy the application files to the working directory
COPY . /app

# Install the dependencies
RUN npm install

# Expose port 3000 for the application
EXPOSE 3000

# Start the application
CMD ["node", "index.js"]