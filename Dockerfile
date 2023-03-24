FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.dsum9vc.mongodb.net
ENV MONGODB_USERNAME victor
ENV MONGODB_PASSWORD h0f0nyzBg8o5Nsx0

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]