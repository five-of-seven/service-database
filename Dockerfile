FROM node:6-alpine
RUN mkdir -p /usr/src/api
WORKDIR /usr/src/api
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]