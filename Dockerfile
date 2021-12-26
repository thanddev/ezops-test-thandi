FROM node:10-alpine 

# Create app directory
RUN mkdir -p /usr/app
WORKDIR /usr/app 

# Install app dependencies
COPY package.json package-lock.json ./
RUN npm install


COPY . .

EXPOSE 3000
CMD [ "node", "server.js"]