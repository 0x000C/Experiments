FROM node:16
WORKDIR /usr/src/app
COPY . .
RUN npm install express pg
EXPOSE 3000
CMD ["node", "app.js"]
