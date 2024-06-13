FROM node:20-alpine AS build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

FROM node:20-alpine
WORKDIR /app
COPY --from=build-stage /app ./
RUN rm -rf /root/.npm && \
adduser -D app-user && \
chown -R app-user /app
USER app-user

CMD ["node", "index.js"]