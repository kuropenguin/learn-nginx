# docker build -t nginx .
# docker container run --name nginx --rm -d -p 8080:80 nginx
FROM nginx:latest

ADD ./conf/default.conf /etc/nginx/conf.d/default.conf
ADD ./src /usr/share/nginx/html

RUN service nginx start
