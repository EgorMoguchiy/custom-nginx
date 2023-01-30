FROM nginx:alpine

RUN apk update
RUN mkdir -p "/etc/letsencrypt/" "/etc/nginx/modules"
RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx/nginx.conf /etc/nginx/
COPY ./nginx/conf.d/* /etc/nginx/conf.d/
COPY ./nginx/modules/* /etc/nginx/modules/
COPY ./letsencrypt/* /etc/letsencrypt/

EXPOSE 80 443
