First steps with Docker

---

DOCKERFILE

  > `FROM node:19.6-alpine`
      
    Specify a base image to build your own.
    In this case, node version 19.6 alpine (alpine means that this is a simpler image).

  > `ENV NODE_ENV production`
    
    Sets the environment to production, it may change how certain utilities behave, increasing performance.

  > `WORKDIR /usr/app`

    Set the dedicated place for your app in the filesystem. Default working directory would be the root path (/)
 

  > `COPY package*.json ./`

    Copy files necessary for dependency installation (package.json and package-lock.json). We do this for better layer caching.

  > `RUN npm ci --only=production`

    Install only the dependencies needed for production

  > `USER node`

    Set a non-root user

  > `COPY --chown=node:node ./app/ .`

    Copy the remaining files from the source code to the WORKDIR. The flag --chown sets file permissions

  > `EXPOSE 8080`

    Indicate expect port


  > `CMD ["node", "start"]`

    Start application server.

    

    

    