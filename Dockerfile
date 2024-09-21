FROM node:16

WORKDIR /usr/src/app

# Debug: List contents of the current directory
RUN ls -la

COPY package*.json ./

# Debug: List contents after copying
RUN ls -la

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start:prod"]