FROM node:10-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git

RUN git clone https://github.com/tagspaces/tagspaces.git \
  && cd tagspaces \
  && yarn install \
  && yarn install-ext
  
WORKDIR /tagspaces

EXPOSE 8080
CMD [ "yarn", "run-web" ]
