FROM node:8
EXPOSE 3000

WORKDIR /app

ADD package.json /usr/app/
RUN npm install

ADD . /app

CMD ["node", "server"]
