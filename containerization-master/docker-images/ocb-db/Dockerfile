FROM postgres:11

COPY db-scripts-sp05 /docker-entrypoint-initdb.d/

CMD ["postgres", "-c", "max_connections=500", "-c", "shared_buffers=512MB"]
