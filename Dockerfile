FROM klakegg/hugo:0.83.1-ext-alpine-onbuild

FROM nginx:1.2.1-alpine
COPY --from=hugo /target /usr/share/nginx/html
EXPOSE 1313