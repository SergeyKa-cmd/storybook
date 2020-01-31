FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ARG PORT=8090
ARG HOST=0.0.0.0
ARG API_PROTOCOL=http
ARG API_HOST=storybook.900.ru
#ARG RECAPTCHA_KEY=6Ld7PAcUAAAAAAj3GuSkFD7oaLadEhjY1_jpt2Av

RUN npm run build

EXPOSE 8090

CMD [ "npm", "run", "storybook" ]
