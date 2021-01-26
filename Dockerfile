FROM node:15.5.0-buster-slim

WORKDIR /app
COPY config.js .
COPY random-image-tweet.js .

RUN npm install twit extfs --save
CMD ["node", "random-image-tweet.js"]