# set base image
FROM node:14.19-slim

# set label
LABEL maintainer="stas.kloy"

# set workdir
WORKDIR ~/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# install node modules
RUN npm install

# Bundle app source
COPY . .

# expose port
EXPOSE 8080

# init db table and run app
CMD npm run initdb && npm run dev