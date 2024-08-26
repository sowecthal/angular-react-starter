# Using a specific version of the nginx:stable-alpine image, pinned via SHA256 hash
# https://hub.docker.com/layers/library/nginx/stable-alpine/images/sha256-f05d105face814474acc5538160bd3f29309d9398dd895a4e71f676a4fd9a3fc
FROM nginx@sha256:d4d72ee8e6d028c5ad939454164d3645be2d38afb5c352277926a48e24abf4fa

RUN mkdir -p /var/cache/nginx/client_temp /var/run/nginx
RUN chown -R nginx:nginx /var/cache/nginx /var/run/nginx /usr/share/nginx/html

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./angular/dist/angular-starter/ /usr/share/nginx/html

USER nginx

CMD ["nginx"]