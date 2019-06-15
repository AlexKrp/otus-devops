FROM node:8

WORKDIR /app
ADD /nodeapp /app
ENV DATABASE_HOST post_db

RUN npm install
EXPOSE 8081
CMD [ "npm", "start" ]


