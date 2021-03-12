# Load from source
FROM redislabs/rejson:latest

# Set new password
ENV REDIS_PASSWORD default

# Load module for redisJSON
CMD ["redis-server", "--loadmodule", "/usr/lib/redis/modules/rejson.so"]

# Set password to redis via shell
RUN redis-server --requirepass $REDIS_PASSWORD --appendonly yes