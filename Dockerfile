# Use an official Node.js image as the base
FROM node:16

# Set the working directory to /app
WORKDIR /app

# Copy package*.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Run the command to start the React development server
CMD ["npm", "start"]
