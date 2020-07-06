FROM node:13

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

ENV PORT 8082

EXPOSE 8082

CMD ["npm", "run", "dev"]