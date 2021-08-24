FROM klakegg/hugo:0.83.1-ext-alpine-onbuild AS hugo

FROM nginxinc/nginx-unprivileged:stable-alpine
COPY --from=hugo /target /usr/share/nginx/html
COPY ./default.conf /etc/nginx/conf.d/default.conf 
#ADD public /usr/share/nginx/html
#EXPOSE 1313
