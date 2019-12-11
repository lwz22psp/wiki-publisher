FROM nginx
WORKDIR /usr/share/nginx/html
ADD /wikipage/. /usr/share/nginx/html
EXPOSE 80