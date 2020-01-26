FROM debian:10

RUN apt-get update && apt-get -y install npm git
RUN npm install npm@6.13.1 -g
RUN npm install --save https://github.com/opensourcer2/dat-gateway.git\#08df37ebd4d18dfbe0c37e9a86701ec15009b7d4 -g
EXPOSE 3000
CMD ["/bin/sh","-c","dat-gateway -L localhost"]
