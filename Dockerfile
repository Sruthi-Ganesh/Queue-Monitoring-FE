FROM node:latest

ENV FRONT_END_WEBPACK=/home/app/microservice/queue-monitoring-fe

RUN npm install webpack -g

RUN mkdir -p $FRONT_END_WEBPACK
WORKDIR $FRONT_END_WEBPACK
COPY . $FRONT_END_WEBPACK
RUN npm config set registry https://registry.npmjs.org/ && npm install


CMD ["npm", "run", "webpack"]