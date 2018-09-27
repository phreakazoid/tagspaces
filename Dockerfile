FROM node:10-alpine

WORKDIR /tagspaces

RUN apk update && apk upgrade && \
    apk add --no-cache bash git

RUN git clone https://github.com/tagspaces/tagspaces.git \
  && cd tagspaces \
  && git checkout develop \
  && yarn install \
  && yarn install-ext

EXPOSE 8080
CMD [ "yarn", "run-web" ]
