FROM nginx:alpine

RUN apk update
COPY index.html /usr/share/nginx/html
EXPOSE 80 443