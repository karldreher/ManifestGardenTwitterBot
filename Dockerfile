FROM node:15.5.0-buster

WORKDIR /app
COPY config.js .
COPY random-image-tweet.js .

RUN npm install twit --save
CMD ["node", "random-image-tweet.js"]