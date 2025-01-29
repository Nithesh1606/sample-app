# Use the official Node.js image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first to leverage Docker caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project files to the container
COPY . .

# Expose the port the app runs on
EXPOSE 4000

# Run the application
CMD ["node", "index.js"]

