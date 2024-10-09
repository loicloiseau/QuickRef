# Use an official Node.js image from Docker Hub as a base
FROM node:lts-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install the npm dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose port 4000 for the dev server
EXPOSE 4000

# Command to start the dev server
CMD ["npm", "run", "dev"]