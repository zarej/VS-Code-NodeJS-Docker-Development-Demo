FROM node:carbon

#develop or production
ENV NODE_ENV=develop

WORKDIR /usr/src/app

RUN npm i -g nodemon

EXPOSE 3000 9229

CMD ["./docker-entrypoint.sh"]
