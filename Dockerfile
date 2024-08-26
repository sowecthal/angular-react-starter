FROM nginx:stable-alpine

RUN mkdir -p /var/cache/nginx/client_temp /var/run/nginx

RUN chown -R nginx:nginx /var/cache/nginx /var/run/nginx /usr/share/nginx/html

COPY ./nginx.conf /etc/nginx/nginx.conf

COPY ./angular/dist/angular-starter/ /usr/share/nginx/html

USER nginx