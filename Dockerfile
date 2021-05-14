FROM nginx:alpine
LABEL author="Matthew Sessions"
COPY ./build /var/www/
COPY default.conf /etc/nginx/nginx.conf
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]