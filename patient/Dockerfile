# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the source code
COPY src ./src

# Expose the port your app listens on
EXPOSE 3000

# Start the app
CMD ["node", "src/index.js"]
