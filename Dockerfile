
FROM node:24-bookworm-slim

WORKDIR /app

# Update inherited Debian packages
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY package.json ./
COPY app ./app

ENV NODE_ENV=production
ENV PORT=3000

EXPOSE 3000

USER node

CMD ["npm", "start"]
