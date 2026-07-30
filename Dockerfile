FROM node:16-slim
WORKDIR /banco_react
COPY . /banco_react
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]