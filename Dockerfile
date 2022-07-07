# set base image
FROM node:14.19-slim

# set label
LABEL maintainer="stas.kloy"

# set workdir
WORKDIR ~/app

# copy repo 
COPY . .

# install node modules
RUN npm install

# expose port
EXPOSE 8080

# init db table and run app
CMD npm run initdb && npm run dev