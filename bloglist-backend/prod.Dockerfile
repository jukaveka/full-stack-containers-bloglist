FROM node:20.19-alpine
WORKDIR /usr/src/app
COPY package.json .
RUN npm install --omit=dev
COPY . .
RUN chown -R node:node .
USER node
CMD ["npm", "run", "prod"]