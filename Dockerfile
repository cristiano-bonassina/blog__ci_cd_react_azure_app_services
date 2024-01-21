FROM node:20-alpine 
ARG BUILD_VERSION
WORKDIR /app
COPY . .
RUN npm ci 
RUN npm run build:ci
ENV NODE_ENV production
EXPOSE 3000
CMD [ "npx", "serve", "build" ]