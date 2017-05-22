FROM node:7
MAINTAINER julien.gil@fifty-five.com

RUN apt-get update 
RUN mkdir /home/www

VOLUME /home/www
EXPOSE 5000

RUN cd /home/www && npm install

CMD cd /home/www && npm start
