FROM node:22.23-alpine AS build-stage
WORKDIR /usr/src/app
COPY . .
RUN npm install
EXPOSE 5173
CMD ["npm", "run", "dev", "--", "--host"]