FROM node:14-alpine

COPY . .

RUN npm install &&\
        cd client

EXPOSE 3000 3001

CMD npm run docker-build-webapp
