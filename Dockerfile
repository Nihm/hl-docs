FROM nginxinc/nginx-unprivileged:stable-alpine
ADD public /usr/share/nginx/html
EXPOSE 1313
