FROM node:lts-buster

RUN git clone https://github.com/viperbwoi/X-AsenaDuplicated/ /root/X

WORKDIR /root/X

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN npm install


CMD ["node", "index.js"]￼Enter
