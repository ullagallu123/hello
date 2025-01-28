FROM node:20 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:1.25.1
COPY --from=build /app/build /usr/share/nginx/html
RUN apt-get update && apt-get install -y gettext
COPY nginx.conf /opt/nginx.conf
COPY all.sh /
EXPOSE 80
ENTRYPOINT ["bash", "/all.sh"]
