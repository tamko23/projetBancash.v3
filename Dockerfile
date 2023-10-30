FROM node:21

# Create directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used esure both package.json AND package-lock.json are copied
# where availabme (npm@5+)
ADD package*.json ./

RUN npm install
# If you are building your code for production
# Run npm ci --omit=dev

# Bundle app source
COPY . . 

EXPOSE 8080
CMD [ "node", "index.js" ]
