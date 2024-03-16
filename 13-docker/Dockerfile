FROM alpine:latest

RUN apk update && apk add nginx

RUN mkdir -p /usr/share/nginx/html

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./html/ /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
