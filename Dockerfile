FROM node:9
VOLUME [ "/data" ]
RUN npm install -g create-react-app
RUN useradd docker
USER docker
WORKDIR /data
EXPOSE 3000
CMD [ "/usr/local/bin/npm", "start" ]