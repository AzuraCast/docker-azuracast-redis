FROM redis:6-alpine

# Update Alpine libraries
RUN apk upgrade --no-cache

COPY redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]