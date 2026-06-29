FROM node:22.23-alpine AS build-stage
WORKDIR /usr/src/app
COPY . .
RUN npm install
CMD ["npm", "run", "dev", "--", "--host"]