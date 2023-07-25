# Specify a base image
FROM node:19.6-alpine

# Set NODE_EV
ENV NODE_ENV production

# Specify a working directory
WORKDIR /usr/app

# Copy files required to install dependencies
COPY package*.json ./

# Only install production dependencies
# Use cache mount to speed up install of existing dependencies
RUN --mount=type=cache,target=/usr/app/.npm \
  npm set cache /usr/app/.npm && \
  npm ci --only=production

# Use non-root user
USER node

# Use --chown on COPY to set file permissions
# Copy remaining source code after installing dependencies.
COPY --chown=node:node ./app/ .

# Indicate port to be used
EXPOSE 8080

# Default command
CMD ["npm", "start"]