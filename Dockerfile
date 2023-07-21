# Specify a base image
FROM node:19.6-alpine

WORKDIR /usr/src/app

# Copy build files
COPY ./ /usr/app

# Install some dependencies
RUN npm install

# Default command
CMD ["npm", "start"]