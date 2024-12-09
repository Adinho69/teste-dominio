FROM node:lts AS build

WORKDIR /app

RUN apt-get update -y
RUN apt-get upgrade -y

COPY . .
RUN npm install
# RUN npx tsc

# ENV TOKEN_TELEGRAM ${TOKEN_TELEGRAM}

ENTRYPOINT [ "node", "index.js" ]
