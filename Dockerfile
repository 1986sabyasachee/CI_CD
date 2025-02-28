FROM nginx:latest
RUN apt update
RUN apt install nginx
WORKDIR /app
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
