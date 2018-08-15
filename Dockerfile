FROM node:8.11-alpine

WORKDIR /src

COPY . .

RUN npm install

RUN node_modules/nuxt/bin/nuxt build

ENV HOST 0.0.0.0
EXPOSE 3000

CMD [ "node_modules/nuxt/bin/nuxt", "start" ]
