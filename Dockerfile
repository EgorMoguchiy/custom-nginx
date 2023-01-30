FROM nginx:alpine

RUN apk update
RUN mkdir -p "/etc/letsencrypt/"

COPY ./letsencrypt/* /etc/letsencrypt/

EXPOSE 80 443
