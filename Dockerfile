FROM ubuntu:focal

# Installing Node

RUN apt-get update

RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh 

RUN bash nodesource_setup.sh

RUN apt-get install -y nodejs

RUN apt-get install -y git

RUN git clone https://github.com/abdullahmughl/mern_app.git

RUN cd mern_app

COPY . .

RUN npm install &&\
        cd client

EXPOSE 3000 3001

CMD npm run docker-build-webapp
