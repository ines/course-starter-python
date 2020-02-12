# Docker file for running Gatsby without installing node version 10 or Gatsby.
# Attribution: https://stackoverflow.com/questions/57405792/gatsby-not-rebuilding-whenever-mounted-code-changes
# Hayley Boyce (kinda not really), February 6th, 2020

FROM node:10

# Add the package.json file and build the node_modules folder
WORKDIR /app
COPY ./package*.json ./
RUN mkdir node_modules
RUN npm install --g gatsby-cli 
RUN npm install