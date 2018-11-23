FROM node:8

#Create App Directory
WORKDIR /usr/src/app

#Install App dependencies
COPY package*.json ./

RUN npm install

#Bundle App source
COPY . .

EXPOSE 80

CMD ["npm", "start"]
