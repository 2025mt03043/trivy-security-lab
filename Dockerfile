FROM node:24-bookworm-slim

WORKDIR /app

COPY package.json ./
COPY app ./app

ENV NODE_ENV=production
ENV PORT=3000

EXPOSE 3000

USER node

CMD ["npm", "start"]