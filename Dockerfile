# Load from reccource
FROM redislabs/rejson:latest as rejson
FROM redislabs/redisgears:latest

# Config enviroment variables
# Set password
ENV REDIS_PASSWORD default

# Copy module file for redis jason
COPY --from=rejson /usr/lib/redis/modules/rejson.so /usr/lib/redis/modules/

# Start Server and set module, password & appendonly
CMD ["redis-server", "--loadmodule", "/usr/lib/redis/modules/rejson.so", "--requirepass", "$REDIS_PASSWORD", "--appendonly", "yes"]