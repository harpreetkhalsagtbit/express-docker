# Use Node v8.9.0 LTS
FROM node:carbon

WORKDIR /usr/src/app

COPY package*.json ./

# RUN npm install

RUN if [ "$NODE_ENV" = "development" ]; \
	then npm install;  \
	else npm install --only=production; \
	fi
