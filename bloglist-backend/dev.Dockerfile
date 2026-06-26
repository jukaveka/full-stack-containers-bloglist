FROM node:20.19.0-alpine
ENV NODE_ENV=development
WORKDIR /usr/src/app
COPY . .
RUN npm install
CMD ["npm", "run", "dev"]