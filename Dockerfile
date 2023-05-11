FROM ubuntu
MAINTAINER "manisha@gmail.com"
WORKDIR /tmp
VOLUME /volume1
RUN apt update -y && apt install nginx -y
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
