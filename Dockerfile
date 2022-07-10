FROM node:lts-buster

RUN git clone https://github.com/princerudh-prh/prince-rudh-md /root/PrinceRudh

WORKDIR /root/PrinceRudh/

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
  
RUN npm install -g npm@8.12.2

RUN npm install -g nodemon 

RUN npm install -g forever

RUN npm i cfonts

RUN npm i -g heroku

CMD ["npm", "index.js"]
