FROM node:8.2.1-alpine

WORKDIR /code

# nodemon will watch the files in the directory in which nodemon was started, 
# and if any files change, nodemon will automatically restart your node application.
# https://www.npmjs.com/package/nodemon/v/1.11.0
RUN npm install -g nodemon@1.11.0

COPY package.json /code/package.json
RUN npm install && npm ls
RUN mv /code/node_modules /node_modules

COPY . /code
CMD ["npm", "start"]