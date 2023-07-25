First steps with Docker

---

DOCKERFILE

  > `FROM node:19.6-alpine`
      
    Specify a base image to build your own.
    In this case, node version 19.6 alpine (alpine means that this is a simpler image).

  > `WORKDIR /usr/app`

    Set the dedicated place for your app in the filesystem. Default working directory would be the root path (/)
 

  > `COPY package*.json ./`

    Copy files necessary for dependency installation (package.json and package-lock.json). We do this for better layer caching.

  > `RUN npm install`

    Install the dependencies

  > `COPY ./app/ .`

    Copy the remaining files from the source code to the WORKDIR.


  > `CMD ["node", "start"]`

    Start application server.

    

    

    