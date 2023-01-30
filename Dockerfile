FROM nginx:alpine

RUN apk update
RUN mkdir -p "/etc/letsencrypt/"
RUN rm /etc/nginx/conf.d/default.conf

#COPY ./nginx/modules/* /etc/nginx/modules/
COPY ./nginx/conf.d/* /etc/nginx/conf.d/
COPY ./letsencrypt/* /etc/letsencrypt/
#COPY ./nginx/nginx.conf /etc/nginx/

EXPOSE 80 443
