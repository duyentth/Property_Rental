# Use the official Node.js image as the base image
FROM node

# Set the working directory inside the container
WORKDIR /app

# Copy the server code to the working directory
COPY . .

# Install the server dependencies (only needed if you're not copying over the node_modules)
RUN npm install

# Expose the port that the server listens on
EXPOSE 3000

# Run the Node.js server when the container starts
CMD ["npm", "run", "dev"]