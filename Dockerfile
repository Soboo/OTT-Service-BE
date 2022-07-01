FROM node:16.15.1-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --location=global nodemon
RUN npm install
COPY . .
CMD ["npm", "run", "start"]
EXPOSE 8080