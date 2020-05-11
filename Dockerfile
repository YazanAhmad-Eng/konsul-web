# FROM node:7
# WORKDIR /app/
# COPY ./package.json .
# RUN npm install
# RUN npm install --global @gridsome/cli
# COPY . .
# RUN gridsome develop

# RUN npm develop
# EXPOSE 8080

FROM alpine:latest
RUN apk add --no-cache nodejs npm
RUN  npm install --global @gridsome/cli


WORKDIR /app


COPY . /app


RUN npm install 
RUN npm install sharp


EXPOSE 8080


ENTRYPOINT ["gridsome"]

CMD ["develop"]