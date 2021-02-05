FROM nginx:1.19.4
MAINTAINER Alexandre Machado <alexandre2602@gmail.com>
WORKDIR /etc/nginx
LABEL Description="PROJETO NGINX BLOG50"
ADD nginx.conf /etc/nginx/nginx.conf
ADD blog50.conf /etc/nginx/conf.d/blog50.conf
ADD index.html /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
