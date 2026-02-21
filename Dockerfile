# Use the official Node.js image from Docker Hub
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Expose the port the app will run on
EXPOSE 3002

# Set the command to run the application
CMD ["node", "src/main/main.js"]