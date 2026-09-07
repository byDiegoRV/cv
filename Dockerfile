FROM nginx:alpine

# Copiamos el sitio estático
COPY index.html /usr/share/nginx/html/index.html
COPY profile.jpg /usr/share/nginx/html/profile.jpg

# Config de nginx en forma de "plantilla": el puerto real se sustituye
# en tiempo de arranque, porque Render asigna el puerto vía $PORT.
COPY nginx.conf.template /etc/nginx/conf.d/default.conf.template
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENV PORT=10000
EXPOSE 10000

ENTRYPOINT ["/docker-entrypoint.sh"]
