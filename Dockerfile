FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

# Enable caching for node_modules
RUN --mount=type=cache,target=/app/node_modules npm install --prefer-offline

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
