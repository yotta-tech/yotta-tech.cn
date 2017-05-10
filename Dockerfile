FROM hub.c.163.com/library/node:latest

# Create app directory
RUN mkdir -p /home/app
WORKDIR /home/app

# Bundle app source
COPY . /home/app
RUN npm install --production

ENV NODE_ENV=production

EXPOSE 3000
CMD ["npm", "run", "build"]
CMD ["npm", "start"]
