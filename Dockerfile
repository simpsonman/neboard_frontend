FROM node:hydrogen
WORKDIR .
ADD . .
COPY package*.json ./

RUN npm install

EXPOSE 3000

CMD ["npm", "run", "serve"]
