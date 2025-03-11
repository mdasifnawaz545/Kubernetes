FROM node

WORKDIR /myapp

# ./ specifies that copy the things and store it in the current working directory (myapp).
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5173

CMD [ "npm","run","dev","--", "--host"]