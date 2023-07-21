# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Copy build files
COPY ./ /usr/app

# Install some dependencies
RUN npm install

# Default command
CMD ["npm", "start"]