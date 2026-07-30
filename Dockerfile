FROM node:16-slim
WORKDIR /banco_react
COPY . /banco_react
RUN npm install

ENV HOST=0.0.0.0
ENV PORT=3000

EXPOSE 3000
CMD ["npm", "start"]