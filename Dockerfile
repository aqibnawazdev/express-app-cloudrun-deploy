FROM node:22

# Create app directory
WORKDIR /app

# Install app dependencies
COPY Package*.json ./
RUN npm install 

# Bundle app source
COPY . .

# Expose port
EXPOSE 8080

# Start the app
CMD [ "npm", "start" ]