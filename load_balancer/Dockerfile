FROM nginx:1.22.0
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/
RUN /etc/init.d/nginx restart