FROM nginx:alpine

RUN apk update
RUN mkdir -p "/etc/letsencrypt/"
RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx/conf.d/* /etc/nginx/conf.d/
COPY ./letsencrypt/* /etc/letsencrypt/
COPY ./var/* /var/

EXPOSE 80 443
