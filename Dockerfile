# Use an official Node.js runtime as the base image
FROM node:22-slim

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port (replace 3000 if you're using a different port)
EXPOSE 3000

# Command to run the application
CMD ["node", "server.js"]
