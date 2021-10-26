
FROM node:16.6.1-buster

RUN apt-get update && \
  apt-get install -y \
  neofetch \
  chromium \
  ffmpeg \
  wget \
  mc \
  imagemagick && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .
RUN npm i ffmpeg
RUN npm i graceful-fs
RUN npm i emoji-api
RUN npm i jsdom
RUN npm i npm i @adiwajshing/baileys@latest

COPY . .

EXPOSE 5000

CMD ["npm", "start"]`
