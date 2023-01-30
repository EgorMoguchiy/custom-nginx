FROM nginx:alpine

RUN apk update
RUN mkdir -p "/etc/letsencrypt/"
RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx/nginx.conf /etc/nginx/
COPY ./nginx/conf.d/* /etc/nginx/conf.d/
COPY ./letsencrypt/* /etc/letsencrypt/

EXPOSE 80 443
