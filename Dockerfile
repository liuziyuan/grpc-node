FROM node:latest

MAINTAINER liuziyuan.room@gmail.com

EXPOSE 50051

# Create app directory
RUN mkdir -p /usr/src/grpc-node

# Use app directory
WORKDIR /usr/src/grpc-node

# Bundle app source
COPY . .

# Install app dependencies 
RUN npm install

CMD ["node", "dynamic_codegen/greeter_server.js"]