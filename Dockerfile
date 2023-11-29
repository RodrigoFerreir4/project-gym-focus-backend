FROM node:18.17-alpine3.17

WORKDIR /usr/app/

COPY package.json .
COPY yarn.lock .
COPY prisma ./prisma/


RUN npm install -g @nestjs/cli
RUN yarn install

COPY . .

EXPOSE $PORT

CMD ["yarn", "start"]
