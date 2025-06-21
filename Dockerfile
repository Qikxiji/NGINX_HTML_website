FROM nginx:1.27.5-alpine

COPY ./static /usr/share/nginx/html/static
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/front_site /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]