FROM node:18-slim

WORKDIR /app

COPY package*.json ./

RUN npm install

ENTRYPOINT [ "npm" ]
CMD [ "run", "exportHtml" ]
