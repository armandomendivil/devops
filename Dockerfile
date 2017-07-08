FROM node:8
EXPOSE 3000

WORKDIR /app

ADD package.json /app/
RUN cd $(npm root -g)/npm     && npm install -g fs-extra     && sed -i -e s/graceful-fs/fs-extra/ -e s/fs.rename/fs.move/ ./lib/utils/rename.js     && npm install -g npm

ADD . /app

CMD ["node", "server"]
