FROM node:carbon

#develop or production
ENV NODE_ENV=develop

WORKDIR /usr/src/app

COPY . .

RUN npm i -g nodemon
RUN npm i

EXPOSE 3000 9229

CMD ["./docker-entrypoint.sh"]
