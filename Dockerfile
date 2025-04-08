FROM node:22

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Ensure the PORT environment variable is properly used
EXPOSE 8080

# Start the server
CMD ["npm", "start"]