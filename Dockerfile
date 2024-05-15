#base image
FROM node:14 as BUILD

#setting up working directory
workdir /usr/src/app

#to copy package.json and package-lock.json files
COPY package*.json ./

#install dependencies
RUN npm install

#to copy application code
copy . .

#stage2
#creating final image which is less size
FROM node:14-slim
workdir /usr/src/app

#to copy the application code from the build stage
COPY --from=BUILD /usr/src/app .
EXPOSE 3000
ENTRYPOINT ["npm","start"]
