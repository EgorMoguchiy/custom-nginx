FROM nginx:alpine

RUN apk update
RUN mkdir -p "/etc/letsencrypt/"
RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/
COPY ./letsencrypt/* /etc/letsencrypt/
COPY ./conf.d/* /etc/nginx/conf.d/

EXPOSE 80 443
