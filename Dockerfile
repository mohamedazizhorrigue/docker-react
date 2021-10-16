FROM node as build
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
#test git tuto
FROM nginx
COPY --from=build /app/build /usr/share/nginx/html


