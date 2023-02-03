
FROM node:18-alpine
ENV NODE_ENV=productiond

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install 

COPY . .

CMD [ "node", "index.js" ]