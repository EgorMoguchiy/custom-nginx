FROM nginx:alpine

RUN apk update
RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx/conf.d/* /etc/nginx/conf.d/
COPY ./letsencrypt/ /etc/letsencrypt
COPY ./var/www/ /var/www/

EXPOSE 80 443
