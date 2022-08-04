FROM nginx:1.21.4
RUN mkdir /html
COPY ./docker/nginx.conf /etc/nginx/conf.d/default.conf
ENTRYPOINT ["nginx", "-g", "daemon off;"]
