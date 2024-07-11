# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /som

# Copy the current directory contents into the container at /som
COPY . /som

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Install the project dependencies
RUN npm install

# Verify the npm version (optional, can be removed if not needed)
RUN npm --version

# Expose port 3100
EXPOSE 3100

# Define the command to run the Angular application
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "3100"]
