FROM nginx:1.26.1-alpine-slim
RUN apk update
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

