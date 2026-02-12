FROM nginx:alpine
RUN adduser -D -u 1000 appuser
COPY index.html /usr/share/nginx/html/
RUN chown -R appuser:appuser /usr/share/nginx/html /var/cache/nginx /var/run
USER appuser
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
