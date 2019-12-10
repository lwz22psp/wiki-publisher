FROM nginx
WORKDIR ~/wikipage
ADD ~/wikipage/. ~/wikipage
EXPOSE 8082