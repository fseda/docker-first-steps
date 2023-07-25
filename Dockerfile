# Specify a base image
FROM node:19.6-alpine

WORKDIR /usr/app

# Copy files required to install dependencies
COPY package*.json ./

# Install some dependencies
RUN npm install

# Copy remaining source code after installing dependencies.
COPY ./app/ .

# Default command
CMD ["npm", "start"]