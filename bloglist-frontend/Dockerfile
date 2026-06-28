FROM node:22.23-alpine AS build-stage
WORKDIR /app
COPY . .
RUN npm install && npm run build

FROM nginx:1.31.2-alpine
EXPOSE 5173
COPY --from=build-stage app/dist /usr/share/nginx/html