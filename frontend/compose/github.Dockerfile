#FROM node:22.9.0 AS builder
#
#WORKDIR /cts-app
#
##COPY ../package*.json ./
#
## Install dependencies
##RUN npm install
#
#COPY .. .
#
## Pass build arguments as environment variables
#ARG EMAIL_USERNAME
#ARG EMAIL_TARGET
#ARG EMAIL_SMTP
#ARG EMAIL_PORT
#ARG STORYBLOK_IS_PREVIEW
#
#ENV EMAIL_USERNAME=$EMAIL_USERNAME
#ENV EMAIL_TARGET=$EMAIL_TARGET
#ENV EMAIL_SMTP=$EMAIL_SMTP
#ENV EMAIL_PORT=$EMAIL_PORT
#ENV STORYBLOK_IS_PREVIEW=$STORYBLOK_IS_PREVIEW

# Build
#RUN npm run build

#FROM node:22.9.0-slim
#
#WORKDIR /opt
#
#COPY --from=builder /cts-app/.output /build
#CMD [ "node", "/build/server/index.mjs" ]

FROM node:22.9.0-slim

COPY ../.output /build
CMD [ "node", "/build/server/index.mjs" ]